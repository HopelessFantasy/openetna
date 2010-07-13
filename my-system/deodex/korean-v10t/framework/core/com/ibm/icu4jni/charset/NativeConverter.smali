.class final Lcom/ibm/icu4jni/charset/NativeConverter;
.super Ljava/lang/Object;
.source "NativeConverter.java"


# static fields
.field public static final SKIP_CALLBACK:I = 0x1

.field public static final STOP_CALLBACK:I = 0x0

.field public static final SUBSTITUTE_CALLBACK:I = 0x2


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native canDecode(J[B)Z
.end method

.method public static final native canEncode(JI)Z
.end method

.method public static final native closeConverter(J)V
.end method

.method public static final native contains(JJ)Z
.end method

.method public static final native convertByteToChar(J[BI[CI[IZ)I
.end method

.method public static final native convertCharToByte(J[CI[BI[IZ)I
.end method

.method public static final native countAliases(Ljava/lang/String;)I
.end method

.method public static final native countAvailable()I
.end method

.method public static final native countInvalidBytes(J[I)I
.end method

.method public static final native countInvalidChars(J[I)I
.end method

.method public static final native decode(J[BI[CI[IZ)I
.end method

.method public static final native encode(J[CI[BI[IZ)I
.end method

.method public static final native flushByteToChar(J[CI[I)I
.end method

.method public static final native flushCharToByte(J[BI[I)I
.end method

.method public static final native getAliases(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static final native getAvailable()[Ljava/lang/String;
.end method

.method public static final native getAveBytesPerChar(J)F
.end method

.method public static final native getAveCharsPerByte(J)F
.end method

.method public static final native getCanonicalName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native getICUCanonicalName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native getJavaCanonicalName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native getMaxBytesPerChar(J)I
.end method

.method public static final native getMaxCharsPerByte(J)I
.end method

.method public static final native getMinBytesPerChar(J)I
.end method

.method public static final native getSubstitutionBytes(J)[B
.end method

.method public static final native openConverter(Ljava/lang/String;)J
.end method

.method public static final native resetByteToChar(J)V
.end method

.method public static final native resetCharToByte(J)V
.end method

.method public static final native safeClone(J)J
.end method

.method public static final native setCallbackDecode(JII[CI)I
.end method

.method public static final native setCallbackEncode(JII[BI)I
.end method

.method public static final native setSubstitutionBytes(J[BI)I
.end method

.method public static final native setSubstitutionChars(J[CI)I
.end method

.method public static final native setSubstitutionModeByteToChar(JZ)I
.end method

.method public static final native setSubstitutionModeCharToByte(JZ)I
.end method
