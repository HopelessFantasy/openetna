.class final Lcom/ibm/icu4jni/text/NativeDecimalFormat;
.super Ljava/lang/Object;
.source "NativeDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;,
        Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;,
        Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static native applyPatternImpl(IZLjava/lang/String;)V
.end method

.method static native cloneImpl(I)I
.end method

.method static native closeDecimalFormatImpl(I)V
.end method

.method static native format(IDLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;
.end method

.method static native format(IJLjava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;
.end method

.method static native format(ILjava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/lang/StringBuffer;I)Ljava/lang/String;
.end method

.method static native getAttribute(II)I
.end method

.method static native getSymbol(II)Ljava/lang/String;
.end method

.method static native getTextAttribute(II)Ljava/lang/String;
.end method

.method static native openDecimalFormatImpl(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native parse(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method static native setAttribute(III)V
.end method

.method static native setSymbol(IILjava/lang/String;)V
.end method

.method static native setTextAttribute(IILjava/lang/String;)V
.end method

.method static native toPatternImpl(IZ)Ljava/lang/String;
.end method
