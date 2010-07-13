.class Lcom/android/calendar/AgendaActivity$2;
.super Landroid/database/ContentObserver;
.source "AgendaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$2;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$2;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaActivity;->access$400(Lcom/android/calendar/AgendaActivity;)V

    .line 198
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$2;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaActivity;->access$500(Lcom/android/calendar/AgendaActivity;)V

    .line 199
    return-void
.end method
