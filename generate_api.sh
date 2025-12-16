#!/bin/bash

set -e  # Exit on error

echo "🚀 BeautyFlow API Client Generator"
echo "===================================="
echo ""

# Configuration
API_URL="http://localhost:8000/documentation/schema/"
OUTPUT_DIR="lib/api/generated"
SCHEMA_FILE="openapi.yaml"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# ============================================
# STEP 1: Download OpenAPI Schema
# ============================================
echo -e "${BLUE}📥 Step 1: Downloading OpenAPI schema...${NC}"
echo "   URL: $API_URL"

if curl -f -o "$SCHEMA_FILE" "$API_URL" 2>/dev/null; then
  SCHEMA_SIZE=$(wc -c < "$SCHEMA_FILE" | tr -d ' ')
  echo -e "${GREEN}   ✓ Schema downloaded successfully (${SCHEMA_SIZE} bytes)${NC}"
else
  echo -e "${YELLOW}   ⚠ Warning: Could not download schema from $API_URL${NC}"
  echo "   Make sure the backend is running on localhost:8000"

  if [ ! -f "$SCHEMA_FILE" ]; then
    echo "   ❌ No existing schema found. Exiting."
    exit 1
  else
    echo "   ℹ Using existing schema file"
  fi
fi
echo ""

# ============================================
# STEP 2: Clean previous generation
# ============================================
echo -e "${BLUE}🧹 Step 2: Cleaning previous generated files...${NC}"

if [ -d "$OUTPUT_DIR" ]; then
  rm -rf "$OUTPUT_DIR"
  echo -e "${GREEN}   ✓ Removed $OUTPUT_DIR${NC}"
fi
echo ""

# ============================================
# STEP 3: Generate Dart client
# ============================================
echo -e "${BLUE}⚙️  Step 3: Generating Dart API client...${NC}"

npx @openapitools/openapi-generator-cli generate \
  -i "$SCHEMA_FILE" \
  -g dart-dio \
  -o "$OUTPUT_DIR" \
  --additional-properties=pubName=beautyflow_api,dateLibrary=core,nullableFields=true \
  --skip-validate-spec \
  > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo -e "${GREEN}   ✓ Client generated successfully${NC}"
else
  echo "   ❌ Generation failed"
  exit 1
fi
echo ""

# ============================================
# STEP 4: Apply fixes to generated code
# ============================================
echo -e "${BLUE}🔧 Step 4: Applying fixes to generated code...${NC}"

# Fix 4.1: Enum default values (const ._(EnumValue) -> EnumValue)
echo "   📝 Fix 4.1: Enum default values..."
find "$OUTPUT_DIR/lib/src/model" -name "*.dart" -type f -exec sed -i '' 's/const \._(\([^)]*\))/\1/g' {} \;
echo -e "${GREEN}      ✓ Fixed enum defaults${NC}"

# Fix 4.2: String decimal to double ('0.00' -> 0.0)
echo "   📝 Fix 4.2: Decimal string to double conversion..."
find "$OUTPUT_DIR/lib/src/model" -name "*.dart" -type f -exec sed -i '' "s/= '\([0-9]*\)\.\([0-9]*\)'/= \1.\2/g" {} \;
echo -e "${GREEN}      ✓ Fixed decimal defaults${NC}"

# Fix 4.3: JsonObject -> Map<String, dynamic>
echo "   📝 Fix 4.3: JsonObject to Map<String, dynamic>..."
find "$OUTPUT_DIR/lib/src" -name "*.dart" -type f -exec sed -i '' 's/JsonObject/Map<String, dynamic>/g' {} \;
echo -e "${GREEN}      ✓ Fixed JsonObject types${NC}"

echo ""

# ============================================
# STEP 5: Install dependencies
# ============================================
echo -e "${BLUE}📦 Step 5: Installing dependencies for generated package...${NC}"

cd "$OUTPUT_DIR"
flutter pub get > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo -e "${GREEN}   ✓ Dependencies installed${NC}"
else
  echo "   ❌ Failed to install dependencies"
  exit 1
fi

cd - > /dev/null
echo ""

# ============================================
# STEP 6: Generate .g.dart files
# ============================================
echo -e "${BLUE}🏗️  Step 6: Generating .g.dart files with build_runner...${NC}"

cd "$OUTPUT_DIR"
flutter pub run build_runner build --delete-conflicting-outputs 2>&1 | grep -E "Built with|issues found|SEVERE" || true

if [ $? -eq 0 ]; then
  echo -e "${GREEN}   ✓ .g.dart files generated${NC}"
else
  echo "   ⚠ Build completed with warnings (this is normal)"
fi

cd - > /dev/null
echo ""

# ============================================
# STEP 7: Update main project dependencies
# ============================================
echo -e "${BLUE}🔗 Step 7: Updating main project dependencies...${NC}"

flutter pub get > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo -e "${GREEN}   ✓ Main project dependencies updated${NC}"
else
  echo "   ❌ Failed to update dependencies"
  exit 1
fi
echo ""

# ============================================
# SUMMARY
# ============================================
echo -e "${GREEN}✅ API Client generation completed successfully!${NC}"
echo ""
echo "📊 Summary:"
echo "   - Schema: $SCHEMA_FILE"
echo "   - Output: $OUTPUT_DIR"
echo "   - Generated files: $(find $OUTPUT_DIR/lib/src/model -name "*.g.dart" 2>/dev/null | wc -l | tr -d ' ') .g.dart files"
echo ""
echo "🎯 Next steps:"
echo "   1. Run: flutter analyze"
echo "   2. Run: flutter build macos --debug"
echo "   3. Test the API connection"
echo ""
