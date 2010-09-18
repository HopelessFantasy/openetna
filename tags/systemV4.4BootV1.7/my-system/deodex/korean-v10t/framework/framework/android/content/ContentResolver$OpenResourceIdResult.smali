.class Landroid/content/ContentResolver$OpenResourceIdResult;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenResourceIdResult"
.end annotation


# instance fields
.field id:I

.field r:Landroid/content/res/Resources;

.field final synthetic this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Landroid/content/ContentResolver$OpenResourceIdResult;->this$0:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
