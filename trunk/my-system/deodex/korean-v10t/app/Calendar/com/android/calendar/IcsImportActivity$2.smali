.class Lcom/android/calendar/IcsImportActivity$2;
.super Ljava/lang/Object;
.source "IcsImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/IcsImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/IcsImportActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/IcsImportActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/calendar/IcsImportActivity$2;->this$0:Lcom/android/calendar/IcsImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/IcsImportActivity$2;->this$0:Lcom/android/calendar/IcsImportActivity;

    invoke-virtual {v0}, Lcom/android/calendar/IcsImportActivity;->finish()V

    .line 82
    return-void
.end method
