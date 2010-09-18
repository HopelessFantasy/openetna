.class Lcom/android/calendar/EditEvent$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/calendar/EditEvent$CalendarsAdapter;->this$0:Lcom/android/calendar/EditEvent;

    .line 377
    const v0, 0x7f03000b

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 378
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/android/calendar/EditEvent$CalendarsAdapter;->setDropDownViewResource(I)V

    .line 379
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 383
    const v1, 0x7f0c0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 384
    .local v0, name:Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    return-void
.end method
