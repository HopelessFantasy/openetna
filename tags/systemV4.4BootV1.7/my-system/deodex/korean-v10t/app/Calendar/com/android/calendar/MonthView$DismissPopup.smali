.class Lcom/android/calendar/MonthView$DismissPopup;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;)V
    .registers 2
    .parameter

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/android/calendar/MonthView$DismissPopup;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/calendar/MonthView$DismissPopup;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$1500(Lcom/android/calendar/MonthView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1346
    return-void
.end method
