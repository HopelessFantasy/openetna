.class Lcom/android/calendar/EditEvent$TimeListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "view"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/android/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    .line 246
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 15
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v10, 0x1

    .line 250
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v7

    .line 251
    .local v7, startTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    .line 258
    .local v2, endTime:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    if-ne v8, v9, :cond_59

    .line 260
    iget v8, v2, Landroid/text/format/Time;->hour:I

    iget v9, v7, Landroid/text/format/Time;->hour:I

    sub-int v3, v8, v9

    .line 261
    .local v3, hourDuration:I
    iget v8, v2, Landroid/text/format/Time;->minute:I

    iget v9, v7, Landroid/text/format/Time;->minute:I

    sub-int v4, v8, v9

    .line 263
    .local v4, minuteDuration:I
    iput p2, v7, Landroid/text/format/Time;->hour:I

    .line 264
    iput p3, v7, Landroid/text/format/Time;->minute:I

    .line 265
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 268
    .local v5, startMillis:J
    add-int v8, p2, v3

    iput v8, v2, Landroid/text/format/Time;->hour:I

    .line 269
    add-int v8, p3, v4

    iput v8, v2, Landroid/text/format/Time;->minute:I

    .line 270
    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 285
    .end local v3           #hourDuration:I
    .end local v4           #minuteDuration:I
    .local v0, endMillis:J
    :cond_37
    :goto_37
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 286
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    invoke-static {v8, v9, v5, v6}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 287
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    invoke-static {v8, v9, v0, v1}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 288
    return-void

    .line 273
    .end local v0           #endMillis:J
    .end local v5           #startMillis:J
    :cond_59
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 274
    .restart local v5       #startMillis:J
    iput p2, v2, Landroid/text/format/Time;->hour:I

    .line 275
    iput p3, v2, Landroid/text/format/Time;->minute:I

    .line 276
    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 279
    .restart local v0       #endMillis:J
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 280
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 281
    move-wide v0, v5

    goto :goto_37
.end method
