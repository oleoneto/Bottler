<!-- Music -->
<div id="section-music" class="bg-gray heading top-100 bottom-100">
    <div class="container">
        <p><span>Music for the mind</span></p>
        <h1>Musically.</h1>

        <div class="row top-20">

% for song in songs:
% if song[0] <= 3:
            <div class="col-md-4 col-sm-12 shadow-1">
                <div class="album">
                    <div class="cover">
                        <img id="image-b{{song[0]}}" class="img-fluid" src="{{ song[4] }}"
                        alt="{{!song[1]}} by {{!song[2]}}">
                    </div>
                    <button id="b{{ song[0] }}" class="play-button-wrapper shadow-2" onclick="PlayTrack(this.id)">
                        <i class="fa fa-play"></i>
                        <audio id="song-b{{ song[0] }}" class="audio-item" src="{{ song[5] }}" onended="ProcessEndedTrack(this)"></audio>
                    </button>
                </div>
                <div class="hidden-info">
                    <p id="title-b{{ song[0] }}">{{ !song[1] }}</p>
                    <p id="album-b{{ song[0] }}">{{ !song[3] }}</p>
                    <p id="artist-b{{ song[0] }}">{{ !song[2] }}</p>
                </div>
            </div>
% end
% end
        </div>
    </div>
</div>
<!-- end Music -->
