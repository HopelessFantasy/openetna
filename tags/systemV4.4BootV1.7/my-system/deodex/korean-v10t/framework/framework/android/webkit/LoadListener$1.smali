.class Landroid/webkit/LoadListener$1;
.super Ljava/lang/Object;
.source "LoadListener.java"

# interfaces
.implements Landroid/net/http/Headers$HeaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LoadListener;->createNativeResponse()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LoadListener;

.field final synthetic val$nativeResponse:I


# direct methods
.method constructor <init>(Landroid/webkit/LoadListener;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Landroid/webkit/LoadListener$1;->this$0:Landroid/webkit/LoadListener;

    iput p2, p0, Landroid/webkit/LoadListener$1;->val$nativeResponse:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public header(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/webkit/LoadListener$1;->this$0:Landroid/webkit/LoadListener;

    iget v1, p0, Landroid/webkit/LoadListener$1;->val$nativeResponse:I

    invoke-static {v0, v1, p1, p2}, Landroid/webkit/LoadListener;->access$000(Landroid/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 1001
    return-void
.end method
