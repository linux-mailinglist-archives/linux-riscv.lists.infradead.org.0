Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0671427EEB
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 15:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASxjZULDgfdW/BVYaKrGxaWGOCtqksdRi1ngXKFzldk=; b=Bx/mAzcbDCWjrd
	9bUxgyK6uEMZ+A3Aoy0ETr7WcXADWsC27qGL4TWPjep0tQKoQJjn/Qa5RUyN+Bk0M/TXTo8Ozl8+Z
	Pb76uwTDspgmxqSxv/FdElWV6gpYLPvngtD5967N+o8dOuPDcJvukTQTx71GLPo+kPHWz5FAq150o
	IMaAbicJjADpTVGE7JaD+tPowP56Buh4sSLCIdrZgVpKCAWh6LfPzCKs7qiZpYkSuP4qrQ8TUUhbH
	DXogSF7iKDu6XvTjj/aD1G7N3meHLAiK98ZM+o76y1oJ/oH5SSpK+H1Dcv3YDgj3/R0owZ7Fuf7Yk
	nDOPQK/E2livTGfHUlUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToES-0004ab-7H; Thu, 23 May 2019 13:58:08 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToEO-0004Zy-L2
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 13:58:05 +0000
Received: from [78.46.172.2] (helo=sslproxy05.your-server.de)
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1hToEL-0004D5-GO; Thu, 23 May 2019 15:58:01 +0200
Received: from [178.197.249.12] (helo=linux.home)
 by sslproxy05.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1hToEL-000GTg-8B; Thu, 23 May 2019 15:58:01 +0200
Subject: Re: [PATCH bpf] bpf, riscv: clear target register high 32-bits for
 and/or/xor on ALU32
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
References: <20190521134622.18358-1-bjorn.topel@gmail.com>
 <49999b2d-f025-894a-be61-a52d13b24678@iogearbox.net>
 <CAJ+HfNifkxKz8df7gLBuqWA6+t6awrrRK6oW6m1nAYETJD+Vfg@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <412b2dda-7507-c291-9787-7a35a7e1bfd6@iogearbox.net>
Date: Thu, 23 May 2019 15:58:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAJ+HfNifkxKz8df7gLBuqWA6+t6awrrRK6oW6m1nAYETJD+Vfg@mail.gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25458/Thu May 23 09:58:32 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_065804_693286_C6F33589 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [213.133.104.62 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Jiong Wang <jiong.wang@netronome.com>, Netdev <netdev@vger.kernel.org>,
 linux-riscv@lists.infradead.org, bpf <bpf@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gMDUvMjEvMjAxOSAwNDoxMiBQTSwgQmrDtnJuIFTDtnBlbCB3cm90ZToKPiBPbiBUdWUsIDIx
IE1heSAyMDE5IGF0IDE2OjAyLCBEYW5pZWwgQm9ya21hbm4gPGRhbmllbEBpb2dlYXJib3gubmV0
PiB3cm90ZToKPj4gT24gMDUvMjEvMjAxOSAwMzo0NiBQTSwgQmrDtnJuIFTDtnBlbCB3cm90ZToK
Pj4+IFdoZW4gdXNpbmcgMzItYml0IHN1YnJlZ2lzdGVycyAoQUxVMzIpLCB0aGUgUklTQy1WIEpJ
VCB3b3VsZCBub3QgY2xlYXIKPj4+IHRoZSBoaWdoIDMyLWJpdHMgb2YgdGhlIHRhcmdldCByZWdp
c3RlciBhbmQgdGhlcmVmb3JlIGdlbmVyYXRlCj4+PiBpbmNvcnJlY3QgY29kZS4KPj4+Cj4+PiBF
LmcuLCBpbiB0aGUgZm9sbG93aW5nIGNvZGU6Cj4+Pgo+Pj4gICAkIGNhdCB0ZXN0LmMKPj4+ICAg
dW5zaWduZWQgaW50IGYodW5zaWduZWQgbG9uZyBsb25nIGEsCj4+PiAgICAgICAgICAgICAgdW5z
aWduZWQgaW50IGIpCj4+PiAgIHsKPj4+ICAgICAgIHJldHVybiAodW5zaWduZWQgaW50KWEgJiBi
Owo+Pj4gICB9Cj4+Pgo+Pj4gICAkIGNsYW5nLTkgLXRhcmdldCBicGYgLU8yIC1lbWl0LWxsdm0g
LVMgdGVzdC5jIC1vIC0gfCBcCj4+PiAgICAgICBsbGMtOSAtbWF0dHI9K2FsdTMyIC1tY3B1PXYz
Cj4+PiAgICAgICAudGV4dAo+Pj4gICAgICAgLmZpbGUgICAidGVzdC5jIgo+Pj4gICAgICAgLmds
b2JsICBmCj4+PiAgICAgICAucDJhbGlnbiAgICAgICAgMwo+Pj4gICAgICAgLnR5cGUgICBmLEBm
dW5jdGlvbgo+Pj4gICBmOgo+Pj4gICAgICAgcjAgPSByMQo+Pj4gICAgICAgdzAgJj0gdzIKPj4+
ICAgICAgIGV4aXQKPj4+ICAgLkxmdW5jX2VuZDA6Cj4+PiAgICAgICAuc2l6ZSAgIGYsIC5MZnVu
Y19lbmQwLWYKPj4+Cj4+PiBUaGUgSklUIHdvdWxkIG5vdCBjbGVhciB0aGUgaGlnaCAzMi1iaXRz
IG9mIHIwIGFmdGVyIHRoZQo+Pj4gYW5kLW9wZXJhdGlvbiwgd2hpY2ggaW4gdGhpcyBjYXNlIG1p
Z2h0IGdpdmUgYW4gaW5jb3JyZWN0IHJldHVybgo+Pj4gdmFsdWUuCj4+Pgo+Pj4gQWZ0ZXIgdGhp
cyBwYXRjaCwgdGhhdCBpcyBub3QgdGhlIGNhc2UsIGFuZCB0aGUgdXBwZXIgMzItYml0cyBhcmUK
Pj4+IGNsZWFyZWQuCj4+Pgo+Pj4gUmVwb3J0ZWQtYnk6IEppb25nIFdhbmcgPGppb25nLndhbmdA
bmV0cm9ub21lLmNvbT4KPj4+IEZpeGVzOiAyMzUzZWNjNmY5MWYgKCJicGYsIHJpc2N2OiBhZGQg
QlBGIEpJVCBmb3IgUlY2NEciKQo+Pj4gU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympv
cm4udG9wZWxAZ21haWwuY29tPgo+Pgo+PiBXYXMgdGhpcyBtaXNzZWQgYmVjYXVzZSB0ZXN0X3Zl
cmlmaWVyIGRpZCBub3QgaGF2ZSB0ZXN0IGNvdmVyYWdlPwo+IAo+IFl1cCwgYW5kIEppb25nIG5v
dGVkIGl0LgoKQXBwbGllZCwgdGhhbmtzIQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yaXNjdgo=
