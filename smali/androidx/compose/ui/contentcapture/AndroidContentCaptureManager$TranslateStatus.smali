.class final enum Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;
.super Ljava/lang/Enum;
.source "AndroidContentCaptureManager.android.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

.field public static final enum SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

.field public static final enum SHOW_TRANSLATED:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;
    .locals 2

    .line 0
    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    sget-object v1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    filled-new-array {v0, v1}, [Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 91
    new-instance v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    const-string v1, "SHOW_ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 92
    new-instance v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    const-string v1, "SHOW_TRANSLATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    invoke-static {}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->$values()[Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->$VALUES:[Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->$VALUES:[Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    return-object v0
.end method
