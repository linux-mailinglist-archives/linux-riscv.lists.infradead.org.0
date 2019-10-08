Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F169CF5E3
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 11:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SvGLf/mq7nICLjowyy5Sjqs0AYXJP1nWHIQad3SONQI=; b=q7Xce2cuK7JHm2A27y3LnObcb
	s+nml3wNJ8Bl/jIOKROk9b22UaIhdNNvzak76xv3LQm6EGUwuA0x/YA8nzTofzhyerFZdN6Q/cNrn
	wqg+rUL/iAHcgrQ5VXrFvbD3iSoWzUXUlRhKqRJ+Z8tfpyzZDpjDuk4AjECdei2/MkSH8HuJXJYkP
	hYebo2xyszR4XXfsqmUqAszhIutG7hgTtfh6oeqkVuWMvI7+E2iYtc+Rd2EJC+mhQI2Yb1TTfnTF0
	UXvvnhm2FPxktOsymRsfQYwUEstClXgjRWWsx+vzUoRmpaPWtABQ/B/0CMvMPdytzyChk8WPWBbNw
	dg0OfIrvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHlfH-0005cY-H8; Tue, 08 Oct 2019 09:20:19 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHlfA-0005Vf-5x; Tue, 08 Oct 2019 09:20:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:References:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xX2VpKHU87je2QU3ca1ySvdnKUeHwLT/3IgsEv5AlKU=; b=ewKg82EMK4lZKG0rUGhBJWMzOO
 8u1EDTYcJnZ+j17qp/rFjXITW3itHtNDyMlt/Jk0a3Yzz0pSoFTJO2mWStmrjTAZgd61KVzswzuXE
 FCDuUJNzivfhfuW1OT0+aP9QGuFJV7yNBTNXKJT6t/AGaVk2L/xuIX4z3v/orGY/8BBKRmbQldG/u
 o5BSV5TA/+FztWfXN1MH4KvKU3h+OP7jpo7BfnPu1OKgGXCPAslFIK+CDihxvuy1edrWyx8WMVNcf
 CkXUvMBr4v1TzBNIRJSTJDax9RLWilIgivXjkg2PBOvaSifLo1j1bLeZ265F1elpGtYQtS4AI+ArQ
 R4/LuwoQ==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHlf6-0005Wq-MI; Tue, 08 Oct 2019 09:20:10 +0000
X-Originating-IP: 81.185.172.69
Received: from [192.168.43.237] (69.172.185.81.rev.sfr.net [81.185.172.69])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E4DD724000F;
 Tue,  8 Oct 2019 09:19:17 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-15-alex@ghiti.fr>
 <208433f810b5b07b1e679d7eedb028697dff851b.camel@wdc.com>
 <60b52f20-a2c7-dee9-7cf3-a727f07400b9@ghiti.fr>
Message-ID: <f258ee67-514f-169c-1364-53d42ec7b6bb@ghiti.fr>
Date: Tue, 8 Oct 2019 05:19:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <60b52f20-a2c7-dee9-7cf3-a727f07400b9@ghiti.fr>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "jhogan@kernel.org" <jhogan@kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcgrof@kernel.org" <mcgrof@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gMTAvNy8xOSA1OjExIEFNLCBBbGV4IEdoaXRpIHdyb3RlOgo+IE9uIDEwLzQvMTkgMTA6MTIg
UE0sIEF0aXNoIFBhdHJhIHdyb3RlOgo+PiBPbiBUaHUsIDIwMTktMDgtMDggYXQgMDI6MTcgLTA0
MDAsIEFsZXhhbmRyZSBHaGl0aSB3cm90ZToKPj4+IEluIG9yZGVyIHRvIGF2b2lkIHdhc3Rpbmcg
dXNlciBhZGRyZXNzIHNwYWNlIGJ5IHVzaW5nIGJvdHRvbS11cCBtbWFwCj4+PiBhbGxvY2F0aW9u
IHNjaGVtZSwgcHJlZmVyIHRvcC1kb3duIHNjaGVtZSB3aGVuIHBvc3NpYmxlLgo+Pj4KPj4+IEJl
Zm9yZToKPj4+IHJvb3RAcWVtdXJpc2N2NjQ6fiMgY2F0IC9wcm9jL3NlbGYvbWFwcwo+Pj4gMDAw
MTAwMDAtMDAwMTYwMDAgci14cCAwMDAwMDAwMCBmZTowMCA2Mzg5IC9iaW4vY2F0LmNvcmV1dGls
cwo+Pj4gMDAwMTYwMDAtMDAwMTcwMDAgci0tcCAwMDAwNTAwMCBmZTowMCA2Mzg5IC9iaW4vY2F0
LmNvcmV1dGlscwo+Pj4gMDAwMTcwMDAtMDAwMTgwMDAgcnctcCAwMDAwNjAwMCBmZTowMCA2Mzg5
IC9iaW4vY2F0LmNvcmV1dGlscwo+Pj4gMDAwMTgwMDAtMDAwMzkwMDAgcnctcCAwMDAwMDAwMCAw
MDowMCAwwqDCoMKgwqDCoMKgwqDCoMKgIFtoZWFwXQo+Pj4gMTU1NTU1NjAwMC0xNTU1NTZkMDAw
IHIteHAgMDAwMDAwMDAgZmU6MDAgNzE5MyAvbGliL2xkLTIuMjguc28KPj4+IDE1NTU1NmQwMDAt
MTU1NTU2ZTAwMCByLS1wIDAwMDE2MDAwIGZlOjAwIDcxOTMgL2xpYi9sZC0yLjI4LnNvCj4+PiAx
NTU1NTZlMDAwLTE1NTU1NmYwMDAgcnctcCAwMDAxNzAwMCBmZTowMCA3MTkzIC9saWIvbGQtMi4y
OC5zbwo+Pj4gMTU1NTU2ZjAwMC0xNTU1NTcwMDAwIHJ3LXAgMDAwMDAwMDAgMDA6MDAgMAo+Pj4g
MTU1NTU3MDAwMC0xNTU1NTcyMDAwIHIteHAgMDAwMDAwMDAgMDA6MDAgMMKgwqDCoMKgwqAgW3Zk
c29dCj4+PiAxNTU1NTc0MDAwLTE1NTU1NzYwMDAgcnctcCAwMDAwMDAwMCAwMDowMCAwCj4+PiAx
NTU1NTc2MDAwLTE1NTU2NzQwMDAgci14cCAwMDAwMDAwMCBmZTowMCA3MTg3IC9saWIvbGliYy0y
LjI4LnNvCj4+PiAxNTU1Njc0MDAwLTE1NTU2NzgwMDAgci0tcCAwMDBmZDAwMCBmZTowMCA3MTg3
IC9saWIvbGliYy0yLjI4LnNvCj4+PiAxNTU1Njc4MDAwLTE1NTU2N2EwMDAgcnctcCAwMDEwMTAw
MCBmZTowMCA3MTg3IC9saWIvbGliYy0yLjI4LnNvCj4+PiAxNTU1NjdhMDAwLTE1NTU2YTAwMDAg
cnctcCAwMDAwMDAwMCAwMDowMCAwCj4+PiAzZmZmYjkwMDAwLTNmZmZiYjEwMDAgcnctcCAwMDAw
MDAwMCAwMDowMCAwwqDCoMKgwqDCoCBbc3RhY2tdCj4+Pgo+Pj4gQWZ0ZXI6Cj4+PiByb290QHFl
bXVyaXNjdjY0On4jIGNhdCAvcHJvYy9zZWxmL21hcHMKPj4+IDAwMDEwMDAwLTAwMDE2MDAwIHIt
eHAgMDAwMDAwMDAgZmU6MDAgNjM4OSAvYmluL2NhdC5jb3JldXRpbHMKPj4+IDAwMDE2MDAwLTAw
MDE3MDAwIHItLXAgMDAwMDUwMDAgZmU6MDAgNjM4OSAvYmluL2NhdC5jb3JldXRpbHMKPj4+IDAw
MDE3MDAwLTAwMDE4MDAwIHJ3LXAgMDAwMDYwMDAgZmU6MDAgNjM4OSAvYmluL2NhdC5jb3JldXRp
bHMKPj4+IDJkZTgxMDAwLTJkZWEyMDAwIHJ3LXAgMDAwMDAwMDAgMDA6MDAgMMKgwqDCoMKgwqDC
oMKgwqDCoCBbaGVhcF0KPj4+IDNmZjdlYjYwMDAtM2ZmN2VkODAwMCBydy1wIDAwMDAwMDAwIDAw
OjAwIDAKPj4+IDNmZjdlZDgwMDAtM2ZmN2ZkNjAwMCByLXhwIDAwMDAwMDAwIGZlOjAwIDcxODcg
L2xpYi9saWJjLTIuMjguc28KPj4+IDNmZjdmZDYwMDAtM2ZmN2ZkYTAwMCByLS1wIDAwMGZkMDAw
IGZlOjAwIDcxODcgL2xpYi9saWJjLTIuMjguc28KPj4+IDNmZjdmZGEwMDAtM2ZmN2ZkYzAwMCBy
dy1wIDAwMTAxMDAwIGZlOjAwIDcxODcgL2xpYi9saWJjLTIuMjguc28KPj4+IDNmZjdmZGMwMDAt
M2ZmN2ZlMjAwMCBydy1wIDAwMDAwMDAwIDAwOjAwIDAKPj4+IDNmZjdmZTQwMDAtM2ZmN2ZlNjAw
MCByLXhwIDAwMDAwMDAwIDAwOjAwIDDCoMKgwqDCoMKgIFt2ZHNvXQo+Pj4gM2ZmN2ZlNjAwMC0z
ZmY3ZmZkMDAwIHIteHAgMDAwMDAwMDAgZmU6MDAgNzE5MyAvbGliL2xkLTIuMjguc28KPj4+IDNm
ZjdmZmQwMDAtM2ZmN2ZmZTAwMCByLS1wIDAwMDE2MDAwIGZlOjAwIDcxOTMgL2xpYi9sZC0yLjI4
LnNvCj4+PiAzZmY3ZmZlMDAwLTNmZjdmZmYwMDAgcnctcCAwMDAxNzAwMCBmZTowMCA3MTkzIC9s
aWIvbGQtMi4yOC5zbwo+Pj4gM2ZmN2ZmZjAwMC0zZmY4MDAwMDAwIHJ3LXAgMDAwMDAwMDAgMDA6
MDAgMAo+Pj4gM2ZmZjg4ODAwMC0zZmZmOGE5MDAwIHJ3LXAgMDAwMDAwMDAgMDA6MDAgMMKgwqDC
oMKgwqAgW3N0YWNrXQo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRyZSBHaGl0aSA8YWxl
eEBnaGl0aS5mcj4KPj4+IEFja2VkLWJ5OiBQYXVsIFdhbG1zbGV5IDxwYXVsLndhbG1zbGV5QHNp
Zml2ZS5jb20+Cj4+PiBSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
Cj4+PiBSZXZpZXdlZC1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+Cj4+PiBS
ZXZpZXdlZC1ieTogTHVpcyBDaGFtYmVybGFpbiA8bWNncm9mQGtlcm5lbC5vcmc+Cj4+PiAtLS0K
Pj4+IMKgIGFyY2gvcmlzY3YvS2NvbmZpZyB8IDEyICsrKysrKysrKysrKwo+Pj4gwqAgMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNj
di9LY29uZmlnIGIvYXJjaC9yaXNjdi9LY29uZmlnCj4+PiBpbmRleCA1OWE0NzI3ZWNkNmMuLjg3
ZGM1MzcwYmVjYiAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvcmlzY3YvS2NvbmZpZwo+Pj4gKysrIGIv
YXJjaC9yaXNjdi9LY29uZmlnCj4+PiBAQCAtNTQsNiArNTQsMTggQEAgY29uZmlnIFJJU0NWCj4+
PiDCoMKgwqDCoMKgIHNlbGVjdCBFREFDX1NVUFBPUlQKPj4+IMKgwqDCoMKgwqAgc2VsZWN0IEFS
Q0hfSEFTX0dJR0FOVElDX1BBR0UKPj4+IMKgwqDCoMKgwqAgc2VsZWN0IEFSQ0hfV0FOVF9IVUdF
X1BNRF9TSEFSRSBpZiA2NEJJVAo+Pj4gK8KgwqDCoCBzZWxlY3QgQVJDSF9XQU5UX0RFRkFVTFRf
VE9QRE9XTl9NTUFQX0xBWU9VVCBpZiBNTVUKPj4+ICvCoMKgwqAgc2VsZWN0IEhBVkVfQVJDSF9N
TUFQX1JORF9CSVRTCj4+PiArCj4+PiArY29uZmlnIEFSQ0hfTU1BUF9STkRfQklUU19NSU4KPj4+
ICvCoMKgwqAgZGVmYXVsdCAxOCBpZiA2NEJJVAo+Pj4gK8KgwqDCoCBkZWZhdWx0IDgKPj4+ICsK
Pj4+ICsjIG1heCBiaXRzIGRldGVybWluZWQgYnkgdGhlIGZvbGxvd2luZyBmb3JtdWxhOgo+Pj4g
KyPCoCBWQV9CSVRTIC0gUEFHRV9TSElGVCAtIDMKPj4+ICtjb25maWcgQVJDSF9NTUFQX1JORF9C
SVRTX01BWAo+Pj4gK8KgwqDCoCBkZWZhdWx0IDI0IGlmIDY0QklUICMgU1YzOSBiYXNlZAo+Pj4g
K8KgwqDCoCBkZWZhdWx0IDE3Cj4+PiDCoCDCoCBjb25maWcgTU1VCj4+PiDCoMKgwqDCoMKgIGRl
Zl9ib29sIHkKPj4gV2l0aCB0aGlzIHBhdGNoLCBJIGFtIG5vdCBhYmxlIHRvIGJvb3QgYSBGZWRv
cmEgTGludXgoYSBHbm9tZSBkZXNrdG9wCj4+IGltYWdlKSBvbiBSSVNDLVYgaGFyZHdhcmUgKFVu
bGVhc2hlZCArIE1pY3Jvc2VtaSBFeHBhbnNpb24gYm9hcmQpLiBUaGUKPj4gYm9vdGluZyBnZXRz
IHN0dWNrIHJpZ2h0IGFmdGVyIHN5c3RlbWQgc3RhcnRzLgo+Pgo+PiBodHRwczovL3Bhc3RlLmZl
ZG9yYXByb2plY3Qub3JnL3Bhc3RlL1RPclVNcXFLSC1wR0ZYN0NuZmFqRGcKPj4KPj4gUmV2ZXJ0
aW5nIGp1c3QgdGhpcyBwYXRjaCBhbGxvdyB0byBib290IEZlZG9yYSBzdWNjZXNzZnVsbHkgb24g
c3BlY2lmaWMKPj4gUklTQy1WIGhhcmR3YXJlLiBJIGhhdmUgbm90IHJvb3QgY2F1c2VkIHRoZSBp
c3N1ZSBidXQgaXQgbG9va3MgbGlrZSBpdAo+PiBtaWdodCBoYXZlIG1lc3NlZCB1c2VycHNhY2Ug
bWFwcGluZy4KPgo+IEl0IG1pZ2h0IGhhdmUgbWVzc2VkIHVzZXJzcGFjZSBtYXBwaW5nIGJ1dCBu
b3QgZW5vdWdoIHRvIG1ha2UgCj4gdXNlcnNwYWNlIGNvbXBsZXRlbHkgYnJva2VuCj4gYXMgc3lz
dGVtZCBkb2VzIHNvbWUgdGhpbmdzLiBJIHdvdWxkIHRyeSB0byBib290IGluIGxlZ2FjeSBsYXlv
dXQ6IGlmIAo+IHlvdSBjYW4gdHJ5IHRvIHNldCBzeXNjdGwgbGVnYWN5X3ZhX2xheW91dAo+IGF0
IGJvb3R0aW1lLCBpdCB3aWxsIG1hcCB1c2Vyc3BhY2UgYXMgaXQgd2FzIGJlZm9yZSAoYm90dG9t
LXVwKS4gSWYgCj4gdGhhdCBkb2VzIG5vdCB3b3JrLCB0aGUgcHJvYmxlbSBjb3VsZAo+IGJlIHRo
ZSByYW5kb21pemF0aW9uIHRoYXQgaXMgYWN0aXZhdGVkIGJ5IGRlZmF1bHQgbm93Lgo+IEFueXdh
eSwgaXQncyB3ZWlyZCBzaW5jZSB1c2Vyc3BhY2Ugc2hvdWxkIG5vdCBkZXBlbmQgb24gaG93IHRo
ZSAKPiBtYXBwaW5nIGlzLgo+Cj4gSWYgeW91IGNhbiBpZGVudGlmeSB0aGUgcHJvZ3JhbSB0aGF0
IHN0YWxscywgdGhhdCB3b3VsZCBiZSBmYW50YXN0aWMgOikKPgo+IEFzIHRoZSBjb2RlIGlzIGNv
bW1vbiB0byBtaXBzIGFuZCBhcm0gbm93IGFuZCBJIGRpZCBub3QgaGVhciBmcm9tIAo+IHRoZW0s
IEkgaW1hZ2luZSB0aGUgcHJvYmxlbSBjb21lcwo+IGZyb20gdXMuCj4KPiBBbGV4CgpBdGlzaCwg
ZG8geW91IGhhdmUgYW55IG5ld3MgcmVnYXJkaW5nIHRoaXMgcHJvYmxlbSA/IElmIHlvdSBoYXZl
IGFuIAppbWFnZSBJIGNhbiBleGVjdXRlIG9uIHFlbXUgdGhhdApyZXByb2R1Y2VzIHRoZSBpc3N1
ZSwgSSBjYW4gdGFrZSBhIGxvb2suCgpBbGV4Cgo+Pgo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgt
cmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
