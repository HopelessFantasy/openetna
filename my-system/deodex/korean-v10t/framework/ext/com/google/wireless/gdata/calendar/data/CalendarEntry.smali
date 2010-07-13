.class public Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "CalendarEntry.java"


# static fields
.field public static final ACCESS_EDITOR:B = 0x3t

.field public static final ACCESS_FREEBUSY:B = 0x2t

.field public static final ACCESS_NONE:B = 0x0t

.field public static final ACCESS_OWNER:B = 0x4t

.field public static final ACCESS_READ:B = 0x1t


# instance fields
.field private accessLevel:B

.field private alternateLink:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private hidden:Z

.field private selected:Z

.field private timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 39
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    .line 41
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    .line 44
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    .line 45
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-super {p0}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    .line 55
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    .line 56
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    .line 59
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    .line 60
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public getAccessLevel()B
    .registers 2

    .prologue
    .line 67
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    return v0
.end method

.method public getAlternateLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    return v0
.end method

.method public setAccessLevel(B)V
    .registers 2
    .parameter "accessLevel"

    .prologue
    .line 74
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    .line 75
    return-void
.end method

.method public setAlternateLink(Ljava/lang/String;)V
    .registers 2
    .parameter "alternateLink"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 2
    .parameter "color"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .parameter "hidden"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    .line 117
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .parameter "selected"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    .line 131
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .registers 2
    .parameter "timezone"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 5
    .parameter "sb"

    .prologue
    const/16 v2, 0xa

    .line 148
    const-string v0, "ACCESS LEVEL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    const-string v0, "ALTERNATE LINK"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "COLOR"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "HIDDEN: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    const-string v0, "SELECTED: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    const-string v0, "TIMEZONE"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method
