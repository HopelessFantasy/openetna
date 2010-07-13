.class Lcom/android/settings/RadioInfo$7;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->displayQxdmEnableResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 966
    iput-object p1, p0, Lcom/android/settings/RadioInfo$7;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/settings/RadioInfo$7;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v0}, Lcom/android/settings/RadioInfo;->finish()V

    .line 968
    return-void
.end method
