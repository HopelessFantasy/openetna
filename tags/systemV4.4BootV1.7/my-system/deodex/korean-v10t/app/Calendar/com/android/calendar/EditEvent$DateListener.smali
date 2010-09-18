.class Lcom/android/calendar/EditEvent$DateListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "view"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p2, p0, Lcom/android/calendar/EditEvent$DateListener;->mView:Landroid/view/View;

    .line 310
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 16
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 314
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v7

    .line 315
    .local v7, startTime:Landroid/text/format/Time;
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    .line 322
    .local v2, endTime:Landroid/text/format/Time;
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->mView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v10

    if-ne v9, v10, :cond_6b

    .line 324
    iget v9, v2, Landroid/text/format/Time;->year:I

    iget v10, v7, Landroid/text/format/Time;->year:I

    sub-int v8, v9, v10

    .line 325
    .local v8, yearDuration:I
    iget v9, v2, Landroid/text/format/Time;->month:I

    iget v10, v7, Landroid/text/format/Time;->month:I

    sub-int v4, v9, v10

    .line 326
    .local v4, monthDuration:I
    iget v9, v2, Landroid/text/format/Time;->monthDay:I

    iget v10, v7, Landroid/text/format/Time;->monthDay:I

    sub-int v3, v9, v10

    .line 328
    .local v3, monthDayDuration:I
    iput p2, v7, Landroid/text/format/Time;->year:I

    .line 329
    iput p3, v7, Landroid/text/format/Time;->month:I

    .line 330
    iput p4, v7, Landroid/text/format/Time;->monthDay:I

    .line 331
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 334
    .local v5, startMillis:J
    add-int v9, p2, v8

    iput v9, v2, Landroid/text/format/Time;->year:I

    .line 335
    add-int v9, p3, v4

    iput v9, v2, Landroid/text/format/Time;->month:I

    .line 336
    add-int v9, p4, v3

    iput v9, v2, Landroid/text/format/Time;->monthDay:I

    .line 337
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 340
    .local v0, endMillis:J
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)V

    .line 356
    .end local v3           #monthDayDuration:I
    .end local v4           #monthDuration:I
    .end local v8           #yearDuration:I
    :cond_49
    :goto_49
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v10, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v10

    invoke-static {v9, v10, v5, v6}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 357
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v10, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v10

    invoke-static {v9, v10, v0, v1}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 358
    iget-object v9, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v10, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v10

    invoke-static {v9, v10, v0, v1}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 359
    return-void

    .line 343
    .end local v0           #endMillis:J
    .end local v5           #startMillis:J
    :cond_6b
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 344
    .restart local v5       #startMillis:J
    iput p2, v2, Landroid/text/format/Time;->year:I

    .line 345
    iput p3, v2, Landroid/text/format/Time;->month:I

    .line 346
    iput p4, v2, Landroid/text/format/Time;->monthDay:I

    .line 347
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 350
    .restart local v0       #endMillis:J
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 351
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 352
    move-wide v0, v5

    goto :goto_49
.end method
