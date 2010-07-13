.class Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;
.super Ljava/lang/Object;
.source "SelectCalendarsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SelectCalendarsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxListener"
.end annotation


# instance fields
.field private final mCalendarId:J

.field private final mPosition:I

.field final synthetic this$0:Lcom/android/calendar/SelectCalendarsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/calendar/SelectCalendarsAdapter;JI)V
    .registers 5
    .parameter
    .parameter "calendarId"
    .parameter "position"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->this$0:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p4, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->mPosition:I

    .line 62
    iput-wide p2, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->mCalendarId:J

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/SelectCalendarsAdapter;JILcom/android/calendar/SelectCalendarsAdapter$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;-><init>(Lcom/android/calendar/SelectCalendarsAdapter;JI)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 9
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    .line 66
    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->mCalendarId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 67
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->this$0:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-static {v2}, Lcom/android/calendar/SelectCalendarsAdapter;->access$000(Lcom/android/calendar/SelectCalendarsAdapter;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 68
    if-eqz p2, :cond_45

    const/4 v2, 0x1

    move v0, v2

    .line 69
    .local v0, checked:I
    :goto_16
    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->this$0:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-static {v2}, Lcom/android/calendar/SelectCalendarsAdapter;->access$000(Lcom/android/calendar/SelectCalendarsAdapter;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "selected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->this$0:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-static {v2}, Lcom/android/calendar/SelectCalendarsAdapter;->access$100(Lcom/android/calendar/SelectCalendarsAdapter;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->this$0:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-static {v3}, Lcom/android/calendar/SelectCalendarsAdapter;->access$000(Lcom/android/calendar/SelectCalendarsAdapter;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->this$0:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-static {v2}, Lcom/android/calendar/SelectCalendarsAdapter;->access$200(Lcom/android/calendar/SelectCalendarsAdapter;)[Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;->mPosition:I

    if-eqz p2, :cond_48

    invoke-static {}, Lcom/android/calendar/SelectCalendarsAdapter;->access$300()Ljava/lang/Boolean;

    move-result-object v4

    :goto_42
    aput-object v4, v2, v3

    .line 72
    return-void

    .line 68
    .end local v0           #checked:I
    :cond_45
    const/4 v2, 0x0

    move v0, v2

    goto :goto_16

    .line 71
    .restart local v0       #checked:I
    :cond_48
    invoke-static {}, Lcom/android/calendar/SelectCalendarsAdapter;->access$400()Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_42
.end method
