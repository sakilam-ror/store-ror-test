<template>
  <div class="container vert-offset-top-5" v-if="stores && stores.length">
    <div class="row">
      <div class="col-sm-3">
        <p><b>Name</b></p>
      </div>
      <div class="col-sm-6">
        <p><b>Hours</b></p>
      </div>
      <div class="col-sm-3">
        <p><b>Locate Us</b></p>
      </div>
    </div>
    <div class="row" v-for="store of stores">
      <div class="col-sm-3">
        <p>{{store.name}}</p>
      </div>
      <div class="col-sm-6">
        <p>{{store.hours}}</p>
      </div>
      <div class="col-sm-3">
        <p><button type="button" class="btn btn-default" data-backdrop="static" data-toggle="modal" data-target="#store-location-map" v-on:click="displayMap(store.lat, store.long);">Locate Us</button></p>
      </div>
    </div>
    <div id="store-location-map" class="modal fade" role="dialog">
      <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
		    Store Location
          </div>
          <div class="modal-body">
            <img src="" alt="Store Location Map" border="0" class="inline-map">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      stores: []
    }
  },
  // Fetches stores when the component is created.
  created() {
    axios({
      method:'get',
      url:'/stores',
      accept:'application/vnd.store-ror-test.v1+json'
    })
    .then(response => {
      this.stores = response.data
    })
    .catch(e => {
      this.errors.push(e)
    })
  },
  methods:{
    displayMap:function(lat, long){
      $(".inline-map").attr('src', 'https://maps.googleapis.com/maps/api/staticmap?center=' + lat + ',' + long + '&zoom=13&size=600x300')
    }
  }
}
</script>
