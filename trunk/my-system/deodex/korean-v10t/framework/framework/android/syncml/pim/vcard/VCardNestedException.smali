.class public Landroid/syncml/pim/vcard/VCardNestedException;
.super Landroid/syncml/pim/vcard/VCardException;
.source "VCardNestedException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/syncml/pim/vcard/VCardException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
