.class Lcom/lge/large/poweroff/PowerOff$2$1;
.super Ljava/lang/Object;
.source "PowerOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/large/poweroff/PowerOff$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/large/poweroff/PowerOff$2;


# direct methods
.method constructor <init>(Lcom/lge/large/poweroff/PowerOff$2;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lge/large/poweroff/PowerOff$2$1;->this$1:Lcom/lge/large/poweroff/PowerOff$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/large/poweroff/PowerOff$2$1;->this$1:Lcom/lge/large/poweroff/PowerOff$2;

    iget-object v0, v0, Lcom/lge/large/poweroff/PowerOff$2;->this$0:Lcom/lge/large/poweroff/PowerOff;

    invoke-static {v0}, Lcom/lge/large/poweroff/PowerOff;->access$000(Lcom/lge/large/poweroff/PowerOff;)V

    .line 138
    return-void
.end method
