//
//  APIConfig.swift
//  SearchScene
//
//  Created by Daniel Prastiwa on 17/02/22.
//

import Foundation

public protocol APIConfig {
  var baseURL: URL { get }
  var path: String { get }
  var queryItems: [URLQueryItem]? { get }
  var components: URLComponents { get }
  var urlRequest: URLRequest { get }
}

public enum HTTPHeaderField: String {
  case authorization = "Authorization"
  case contentType = "Content-Type"
  case acceptType = "Accept"
  case acceptEncoding = "Accept-Encoding"
  case localization = "X-Localization"
}

public enum ContentType: String {
  case json = "application/json"
  case form = "application/x-www-form-urlencoded"
}

public enum UploadState {
  case uploading(progress: Int)
  case success(url: String)
}

public enum DownloadState {
  case downloading(progress: Int)
  case success(url: String)
}
