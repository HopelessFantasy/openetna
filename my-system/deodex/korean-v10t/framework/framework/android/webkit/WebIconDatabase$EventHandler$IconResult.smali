.class Landroid/webkit/WebIconDatabase$EventHandler$IconResult;
.super Ljava/lang/Object;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebIconDatabase$EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconResult"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mListener:Landroid/webkit/WebIconDatabase$IconListener;

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$1:Landroid/webkit/WebIconDatabase$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebIconDatabase$EventHandler;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 5
    .parameter
    .parameter "url"
    .parameter "icon"
    .parameter "l"

    .prologue
    .line 59
    iput-object p1, p0, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;->this$1:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;->mUrl:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;->mIcon:Landroid/graphics/Bitmap;

    .line 62
    iput-object p4, p0, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;->mListener:Landroid/webkit/WebIconDatabase$IconListener;

    .line 63
    return-void
.end method


# virtual methods
.method dispatch()V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;->mListener:Landroid/webkit/WebIconDatabase$IconListener;

    iget-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;->mIcon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebIconDatabase$IconListener;->onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method
