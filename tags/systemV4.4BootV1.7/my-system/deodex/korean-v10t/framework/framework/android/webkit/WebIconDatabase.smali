.class public final Landroid/webkit/WebIconDatabase;
.super Ljava/lang/Object;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebIconDatabase$1;,
        Landroid/webkit/WebIconDatabase$IconListener;,
        Landroid/webkit/WebIconDatabase$EventHandler;
    }
.end annotation


# static fields
.field private static sIconDatabase:Landroid/webkit/WebIconDatabase;


# instance fields
.field private final mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;-><init>(Landroid/webkit/WebIconDatabase;Landroid/webkit/WebIconDatabase$1;)V

    iput-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    .line 242
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->nativeOpen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 32
    invoke-static {}, Landroid/webkit/WebIconDatabase;->nativeClose()V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 32
    invoke-static {}, Landroid/webkit/WebIconDatabase;->nativeRemoveAllIcons()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->nativeRetainIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Landroid/webkit/WebIconDatabase;
    .registers 1

    .prologue
    .line 225
    sget-object v0, Landroid/webkit/WebIconDatabase;->sIconDatabase:Landroid/webkit/WebIconDatabase;

    if-nez v0, :cond_b

    .line 226
    new-instance v0, Landroid/webkit/WebIconDatabase;

    invoke-direct {v0}, Landroid/webkit/WebIconDatabase;-><init>()V

    sput-object v0, Landroid/webkit/WebIconDatabase;->sIconDatabase:Landroid/webkit/WebIconDatabase;

    .line 228
    :cond_b
    sget-object v0, Landroid/webkit/WebIconDatabase;->sIconDatabase:Landroid/webkit/WebIconDatabase;

    return-object v0
.end method

.method private static native nativeClose()V
.end method

.method private static native nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeOpen(Ljava/lang/String;)V
.end method

.method private static native nativeReleaseIconForPageUrl(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveAllIcons()V
.end method

.method private static native nativeRetainIconForPageUrl(Ljava/lang/String;)V
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$700(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    .line 170
    return-void
.end method

.method createHandler()V
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-static {v0}, Landroid/webkit/WebIconDatabase$EventHandler;->access$800(Landroid/webkit/WebIconDatabase$EventHandler;)V

    .line 237
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 158
    if-eqz p1, :cond_d

    .line 159
    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$700(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    .line 162
    :cond_d
    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 211
    if-eqz p1, :cond_d

    .line 212
    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$700(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    .line 215
    :cond_d
    return-void
.end method

.method public removeAllIcons()V
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$700(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    .line 178
    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 6
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 187
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 193
    :cond_4
    :goto_4
    return-void

    .line 190
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-static {v1, v0}, Landroid/webkit/WebIconDatabase$EventHandler;->access$700(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    goto :goto_4
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 200
    if-eqz p1, :cond_d

    .line 201
    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$700(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    .line 204
    :cond_d
    return-void
.end method
