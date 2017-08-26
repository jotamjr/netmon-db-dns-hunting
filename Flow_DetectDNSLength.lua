function Flow_DetectDNSLength (dpiMsg, ruleEngine)
  if (GetInt(dpiMsg, 'internal', 'applicationid') ~= 793) then
    return false
  end
  local host = GetString(dpiMsg, 'dns', 'host')
  if (host == nil or host == '') then
    return false
  end
  local hlen = string.len(host)
  SetCustomField(dpiMsg, 'HostLength', hlen)
end
