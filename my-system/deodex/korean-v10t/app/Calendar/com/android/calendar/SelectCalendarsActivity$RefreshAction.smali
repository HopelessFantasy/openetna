.class public Lcom/android/calendar/SelectCalendarsActivity$RefreshAction;
.super Ljava/lang/Object;
.source "SelectCalendarsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SelectCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SelectCalendarsActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/SelectCalendarsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/calendar/SelectCalendarsActivity$RefreshAction;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$RefreshAction;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-static {v0}, Lcom/android/calendar/SelectCalendarsActivity;->access$300(Lcom/android/calendar/SelectCalendarsActivity;)V

    .line 268
    return-void
.end method
