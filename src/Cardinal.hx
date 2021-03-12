import feathers.skins.RectangleSkin;
import feathers.controls.Application;
import feathers.controls.Label;
import feathers.controls.Button;
import feathers.text.TextFormat;
import feathers.style.Theme;
import openfl.Assets;
import openfl.text.Font;
import feathers.skins.RectangleSkin;

class Cardinal extends Application {
	public function new() {
		super();
		initElements();		
	}
	
	// ui elements
	private var app = new Application();
	private var titleLabel = new Label();
	private var nameLabel = new Label();
	private var backgroundColor = new RectangleSkin();
	private var SanFranciscoFont:Font = Assets.getFont("fonts/SF-Pro-Text-Regular.otf");

	public function initElements() {
		// background
		this.backgroundColor.fill = SolidColor(0x181816);
		this.app.backgroundSkin = this.backgroundColor;
		addChild(app);

		// title text
		this.titleLabel.text = "Cardinal";
		this.titleLabel.embedFonts = true;
		this.titleLabel.textFormat = new TextFormat(SanFranciscoFont.fontName, 30, 0xff0000);
		this.titleLabel.paddingTop = 5;
		this.titleLabel.paddingLeft = 10;
		addChild(this.titleLabel);

		// name text
		this.nameLabel.text = "by: Modern Era";
		this.nameLabel.embedFonts = true;
		this.nameLabel.textFormat = new TextFormat(SanFranciscoFont.fontName, 18, 0xFFFFFF);
		this.nameLabel.paddingTop = 35;
		this.nameLabel.paddingLeft = 10;
		addChild(this.nameLabel);
	}
}