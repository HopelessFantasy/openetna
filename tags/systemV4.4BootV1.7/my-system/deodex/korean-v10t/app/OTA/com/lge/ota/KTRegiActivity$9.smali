.class Lcom/lge/ota/KTRegiActivity$9;
.super Ljava/util/TimerTask;
.source "KTRegiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/ota/KTRegiActivity;->timer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/ota/KTRegiActivity;


# direct methods
.method constructor <init>(Lcom/lge/ota/KTRegiActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/lge/ota/KTRegiActivity$9;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$9;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-virtual {v0}, Lcom/lge/ota/KTRegiActivity;->startTimer()V

    .line 428
    return-void
.end method
