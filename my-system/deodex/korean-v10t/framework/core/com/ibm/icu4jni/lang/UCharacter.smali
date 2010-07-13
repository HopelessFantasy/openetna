.class public Lcom/ibm/icu4jni/lang/UCharacter;
.super Ljava/lang/Object;
.source "UCharacter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native codeblock(I)I
.end method

.method public static digit(II)I
    .registers 3
    .parameter "codePoint"
    .parameter "radix"

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/ibm/icu4jni/lang/UCharacter;->digitImpl(II)I

    move-result v0

    return v0
.end method

.method private static native digitImpl(II)I
.end method

.method public static forName(Ljava/lang/String;)I
    .registers 2
    .parameter "blockName"

    .prologue
    .line 144
    if-nez p0, :cond_8

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 147
    :cond_8
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->forname(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native forname(Ljava/lang/String;)I
.end method

.method public static getBlockTable()[Ljava/lang/Character$UnicodeBlock;
    .registers 3

    .prologue
    .line 166
    const/16 v1, 0x7e

    new-array v0, v1, [Ljava/lang/Character$UnicodeBlock;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->IPA_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SPACING_MODIFIER_LETTERS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GREEK:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CYRILLIC:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARMENIAN:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SYRIAC:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->THAANA:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->DEVANAGARI:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BENGALI:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GURMUKHI:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GUJARATI:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ORIYA:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->TAMIL:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->TELUGU:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KANNADA:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MALAYALAM:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SINHALA:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->THAI:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LAO:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->TIBETAN:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MYANMAR:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GEORGIAN:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ETHIOPIC:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CHEROKEE:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->OGHAM:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->RUNIC:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KHMER:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MONGOLIAN:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GREEK_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SUPERSCRIPTS_AND_SUBSCRIPTS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CURRENCY_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_MARKS_FOR_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LETTERLIKE_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->NUMBER_FORMS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARROWS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MATHEMATICAL_OPERATORS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_TECHNICAL:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CONTROL_PICTURES:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->OPTICAL_CHARACTER_RECOGNITION:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_ALPHANUMERICS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOX_DRAWING:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BLOCK_ELEMENTS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GEOMETRIC_SHAPES:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->DINGBATS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BRAILLE_PATTERNS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->IDEOGRAPHIC_DESCRIPTION_CHARACTERS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->YI_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->YI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HIGH_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HIGH_PRIVATE_USE_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LOW_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->PRIVATE_USE_AREA:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ALPHABETIC_PRESENTATION_FORMS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_HALF_MARKS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SMALL_FORM_VARIANTS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SPECIALS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->OLD_ITALIC:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GOTHIC:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->DESERET:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BYZANTINE_MUSICAL_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MUSICAL_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MATHEMATICAL_ALPHANUMERIC_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x60

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->TAGS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x61

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CYRILLIC_SUPPLEMENTARY:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x62

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->TAGALOG:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x63

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANUNOO:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x64

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BUHID:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x65

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->TAGBANWA:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x66

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x67

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SUPPLEMENTAL_ARROWS_A:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x68

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SUPPLEMENTAL_ARROWS_B:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x69

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SUPPLEMENTAL_MATHEMATICAL_OPERATORS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->VARIATION_SELECTORS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SUPPLEMENTARY_PRIVATE_USE_AREA_A:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SUPPLEMENTARY_PRIVATE_USE_AREA_B:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LIMBU:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x70

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->TAI_LE:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x71

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KHMER_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x72

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x73

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_SYMBOLS_AND_ARROWS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x74

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->YIJING_HEXAGRAM_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x75

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LINEAR_B_SYLLABARY:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x76

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LINEAR_B_IDEOGRAMS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x77

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->AEGEAN_NUMBERS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x78

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->UGARITIC:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x79

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->SHAVIAN:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->OSMANYA:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CYPRIOT_SYLLABARY:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->TAI_XUAN_JING_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->VARIATION_SELECTORS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    aput-object v2, v0, v1

    .line 293
    .local v0, result:[Ljava/lang/Character$UnicodeBlock;
    return-object v0
.end method

.method public static getDirectionality(I)B
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->getDirectionalityImpl(I)B

    move-result v0

    return v0
.end method

.method private static native getDirectionalityImpl(I)B
.end method

.method public static getNumericValue(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->getNumericValueImpl(I)I

    move-result v0

    return v0
.end method

.method private static native getNumericValueImpl(I)I
.end method

.method public static getType(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->getTypeImpl(I)I

    move-result v0

    return v0
.end method

.method private static native getTypeImpl(I)I
.end method

.method public static isDefined(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isDefinedValueImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isDefinedValueImpl(I)Z
.end method

.method public static isDigit(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isDigitImpl(I)Z
.end method

.method public static isIdentifierIgnorable(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isIdentifierIgnorableImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isIdentifierIgnorableImpl(I)Z
.end method

.method public static isLetter(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isLetterImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isLetterImpl(I)Z
.end method

.method public static isLetterOrDigit(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isLetterOrDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isLetterOrDigitImpl(I)Z
.end method

.method public static isLowerCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isLowerCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isLowerCaseImpl(I)Z
.end method

.method public static isMirrored(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isMirroredImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isMirroredImpl(I)Z
.end method

.method public static isSpaceChar(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isSpaceCharImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isSpaceCharImpl(I)Z
.end method

.method public static isTitleCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isTitleCaseImpl(I)Z
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isUnicodeIdentifierPartImpl(I)Z
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isUnicodeIdentifierStartImpl(I)Z
.end method

.method public static isUpperCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isUpperCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isUpperCaseImpl(I)Z
.end method

.method public static isWhitespace(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isWhitespaceImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isWhitespaceImpl(I)Z
.end method

.method public static of(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 153
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->codeblock(I)I

    move-result v0

    return v0
.end method

.method public static toLowerCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 114
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->toLowerCaseImpl(I)I

    move-result v0

    return v0
.end method

.method private static native toLowerCaseImpl(I)I
.end method

.method public static toTitleCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->toTitleCaseImpl(I)I

    move-result v0

    return v0
.end method

.method private static native toTitleCaseImpl(I)I
.end method

.method public static toUpperCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 126
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->toUpperCaseImpl(I)I

    move-result v0

    return v0
.end method

.method private static native toUpperCaseImpl(I)I
.end method
