<div class="container top-100 bottom-60">
  <div class="row">

  <!-- Album artwork -->
  <div class="col-md-4">
    <img class="img-fluid" id="artwork" src="" alt="">
    <span id="copyright"></span>
  </div>

  <!-- Songs -->
  <div id="mainTable" class="mainTable col-md-8">
    <h1 id="artistHeader" class="mainTitle">Artist</h1>
    <p id="albumHeader" class="subTitle">Album</p>

    <table class="sortable table table-condensed table-hover">
    <thead class="tableHead">
      <tr>
        <th data-sort="name">Title</th>
        <th data-sort="artist">Artist</th>
        <th data-sort="album">Album</th>
        <th>Preview</th>
      </tr>
    </thead>

    <tbody class="tableBody" id="songList">

% for song in songs:
% if song[0] > 1:
    <tr class="song" onclick="ClickTrack(this)">
      <td id="title-b{{ song[0] }}">{{ !song[1] }}</td>
      <td>{{ !song[3] }}</td>
      <td class="hidden album-name">{{ !song[2] }}</td>
      <td>
          <button onclick="PlayTrack(this.id)" id="b{{ song[0] }}">
              <i class="fa fa-play"></i>
              <audio class="audio-item"
              src="{{ song[5] }}" id="song-b{{ song[0] }}" onended="ProcessEndedTrack(this)">
              </audio>
          </button>
    </tr>
    <div class="hidden-info">
    <img class="img-fluid"
    src="{{ !song[4] }}" alt="{{ !song[1] }} by {{ !song[3]}}" id="image-b{{ song[0] }}">
    </div>
% end
% end

        </tbody>
    </table>
    </div>
    </div>
</div>
