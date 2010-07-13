.class Lcom/android/settings/ChooseLockPatternExample$1;
.super Ljava/lang/Object;
.source "ChooseLockPatternExample.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPatternExample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPatternExample;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPatternExample;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/ChooseLockPatternExample$1;->this$0:Lcom/android/settings/ChooseLockPatternExample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample$1;->this$0:Lcom/android/settings/ChooseLockPatternExample;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample$1;->this$0:Lcom/android/settings/ChooseLockPatternExample;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPatternExample;->access$000(Lcom/android/settings/ChooseLockPatternExample;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPatternExample;->startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 39
    return-void
.end method
