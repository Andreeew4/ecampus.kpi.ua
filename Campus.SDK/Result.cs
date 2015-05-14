﻿using Newtonsoft.Json;
using System;
using System.Net;
using PagedList;

namespace Campus.SDK
{
    public class Result : IResult
    {
        public int StatusCode { get; set; }
        public DateTime TimeStamp { get; protected set; }
        public String Guid { get; protected set; }
        public string ExecutionTime { get; set; }


        /// <summary>
        /// Paging information. If null - information is complex object 
        /// </summary>
        [JsonConverter(typeof(PagedListJsonConverter))]
        public IPagedList Paging { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public dynamic Data { get; set; }

        public Result()
        {
            StatusCode = (int)HttpStatusCode.OK;
            TimeStamp = DateTime.Now;
            Guid = System.Guid.NewGuid().ToString();
            Paging = null;
        }

        public static Result Parse(string json)
        {
            return JsonConvert.DeserializeObject<Result>(json);
        }

        public void Dispose()
        {
        }
    }
}
