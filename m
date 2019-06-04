Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E13433ED6
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Jun 2019 08:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwV/8Qo90w80rq1J7A5GPLe3JMNY45c7hnHAKuIzdF0=; b=RUT39gI8UZ+2Xs
	7l3/nGAcw0GTmILJBUv0I4RO/n2lzjiP1mJ9iSOOBPvkfOsqQwOjTpgX2Kh0ceB46GA98A9RuMp05
	1ajPykoknC1nim6hLAWZiYvDJu+YBR41fnYwz1mWCHsX8M36y8H2geXrXjDPZdVtLIKmpqGL8eKn1
	4ViPEfu25Ti0Bu5nSMffZMhpsRDm9X+TJ7Bziw6Zd1vkuVTyNDSg3JV2oxKJl9PIccVN1rTX2lcPh
	UUdOqT2LxaL+VkS9Tp7wmFEiahzfnQIAq7jH3Q0FPNsE+7cSrQ9NkMboKpL+615N5ujg9s1xR7si/
	M79ME7s6jR/x95TO0vig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2gS-0002oC-0h; Tue, 04 Jun 2019 06:12:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2gO-0002ns-PM
 for linux-riscv@lists.infradead.org; Tue, 04 Jun 2019 06:12:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id 22so5110183wmg.2
 for <linux-riscv@lists.infradead.org>; Mon, 03 Jun 2019 23:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TMXweKhrysV0Lzk8TuE66Re5i67xMIHF0nwyCke3TcA=;
 b=v/sZW7sn93EUziShXhsWoRWr7XFOZBlcpGR7sJW0biaOwKo7XVJjuHeCk6k+AaBe4q
 r/ogk1R2GsJK7khxbcddQLtiN2s+w8XbtpgZM7tovMTZTsrtULBRmVhUWXK7fopJeTSn
 ooy+u1fUv8NVFGozaNBRrUBMJqsD34Rh/J0FDcPqvCV6LOH6MSWxjd21oI1VcZpfsjsU
 vkzzRQ3ydewUO8W23vT2P74AmHzc8sB/OtXS8bBcCw4481/5YCyGqiMI+E3OLmJlsNDT
 xiQYxwZLYJU6hm2bMiBYuIzNalz1pptC2O9US6I3FxjXbUnyr7CIqh+wI5n/jHbNP6FY
 RIMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TMXweKhrysV0Lzk8TuE66Re5i67xMIHF0nwyCke3TcA=;
 b=rNqENuhnt/rf8D+WKXyAtNgbhE6eoy6BkmlkYG6r19HaDDUPaj7eZlqhTMHQxhHwII
 a91lpYO1l0QWVvkXaLneS+y6i7Q1sd7sb5IHWf6h+ZO3hryDPp8z8xEd9Tlq0gxuWMtp
 ut78pL1+1Tv7ZXQOeZvmjQWXEJkIQNVZrcAymb1zumXZ5E/2o1McdoNoLPot8LPMBIry
 zvfczRBCF2cV35eLu5q7InEjsy7E8DkcE3CSdgcXlE7mrSwiPdCY3pLIgKErsWgVfb73
 JFVo1HHok2++yekw10wqKNEmCJJW1Gkf0sSINPQwuTVyz12PJYclGXWaFSpigMU51xo9
 lVQA==
X-Gm-Message-State: APjAAAXD4eNZpwIzZAfV9wg1rJL1RAKb6OLtM4ERUyIcbBSck6x7Y7Bx
 d58H4e3mtwVXa8afUyw5RwSqPpJKgmFRx1X5y29keEMg+Kg=
X-Google-Smtp-Source: APXvYqyEcrMAXJ7qpGDgd1TS6ZmTaegLMO7DNvYMY2xrFIoVSWvKDYLrzltLde+qKbng/azGKPqxeKHx/oFxny23F7w=
X-Received: by 2002:a1c:e0c4:: with SMTP id x187mr7662388wmg.177.1559628746172; 
 Mon, 03 Jun 2019 23:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
 <86o93mpqbx.fsf@baylibre.com>
 <20190528153542.jfkkwycyc3vu6hld@excalibur.cnev.de>
 <081611ea-a0d3-b0c9-3e08-8946513f2174@wdc.com> <86woi94lvs.fsf@baylibre.com>
 <BC002AAE-7EE6-404D-9204-D10263BEA5C9@sifive.com>
 <8636krhubp.fsf@baylibre.com>
 <038A3CC1-B970-4B1B-83C1-59992F609888@sifive.com>
In-Reply-To: <038A3CC1-B970-4B1B-83C1-59992F609888@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 4 Jun 2019 11:42:15 +0530
Message-ID: <CAAhSdy3qgqdz+XPsBWZSfYZhMTA2Py+M9OuD=K1Yo=yDwwdJkQ@mail.gmail.com>
Subject: Re: Testing the recent RISC-V DT patchsets
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_231228_869697_EF3BDA66 
X-CRM114-Status: GOOD (  27.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Loys Ollivier <lollivier@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Karsten Merker <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gNCwgMjAxOSBhdCAxOjQ3IEFNIFRyb3kgQmVuamVnZXJkZXMKPHRyb3kuYmVu
amVnZXJkZXNAc2lmaXZlLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBPbiBKdW4gMywgMjAxOSwgYXQg
NDo0OSBBTSwgTG95cyBPbGxpdmllciA8bG9sbGl2aWVyQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gT24gV2VkIDI5IE1heSAyMDE5IGF0IDEyOjI1LCBUcm95IEJlbmplZ2VyZGVzIDx0cm95
LmJlbmplZ2VyZGVzQHNpZml2ZS5jb20+IHdyb3RlOgo+ID4KPiA+Pj4gT24gTWF5IDI5LCAyMDE5
LCBhdCA1OjA0IEFNLCBMb3lzIE9sbGl2aWVyIDxsb2xsaXZpZXJAYmF5bGlicmUuY29tPiB3cm90
ZToKPiA+Pj4KPiA+Pj4gT24gV2VkIDI5IE1heSAyMDE5IGF0IDAwOjUwLCBBdGlzaCBQYXRyYSA8
YXRpc2gucGF0cmFAd2RjLmNvbT4gd3JvdGU6Cj4gPj4+Cj4gPj4+PiBPbiA1LzI4LzE5IDg6MzYg
QU0sIEthcnN0ZW4gTWVya2VyIHdyb3RlOgo+ID4+Pj4+IE9uIFR1ZSwgTWF5IDI4LCAyMDE5IGF0
IDA1OjEwOjQyUE0gKzAyMDAsIExveXMgT2xsaXZpZXIgd3JvdGU6Cj4gPj4+Pj4+IE9uIFR1ZSAy
OCBNYXkgMjAxOSBhdCAwMTozMiwgUGF1bCBXYWxtc2xleSA8cGF1bC53YWxtc2xleUBzaWZpdmUu
Y29tPiB3cm90ZToKPiA+Pj4+Pj4KPiA+Pj4+Pj4+IEFuIHVwZGF0ZSBmb3IgdGhvc2UgdGVzdGlu
ZyBSSVNDLVYgcGF0Y2hlczogaGVyZSdzIGEgbmV3IGJyYW5jaCBvZgo+ID4+Pj4+Pj4gcmlzY3Yt
cGsvYmJsIHRoYXQgZG9lc24ndCB0cnkgdG8gcmVhZCBvciBtb2RpZnkgdGhlIERUIGRhdGEgYXQg
YWxsLCB3aGljaAo+ID4+Pj4+Pj4gc2hvdWxkIGJlIHVzZWZ1bCB1bnRpbCBVLUJvb3Qgc2V0dGxl
cyBkb3duLgo+ID4+Pj4+IFsuLi5dCj4gPj4+Pj4+PiBIZXJlIGlzIGFuIExpbnV4IGtlcm5lbCBi
cmFuY2ggd2l0aCB1cGRhdGVkIERUIGRhdGEgdGhhdCBjYW4gYmUgYm9vdGVkCj4gPj4+Pj4+PiB3
aXRoIHRoZSBhYm92ZSBib290bG9hZGVyOgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+ICAgaHR0cHM6Ly9n
aXRodWIuY29tL3NpZml2ZS9yaXNjdi1saW51eC90cmVlL2Rldi9wYXVsdy9kdHMtdjUuMi1yYzEt
ZXhwZXJpbWVudGFsCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gQSBzYW1wbGUgYm9vdCBsb2cgZm9sbG93
cywgdXNpbmcgYSAnZGVmY29uZmlnJyBidWlsZCBmcm9tIHRoYXQgYnJhbmNoLgo+ID4+Pj4+Pgo+
ID4+Pj4+PiBUaGFua3MgUGF1bCwgSSBjYW4gY29uZmlybSB0aGF0IGl0IHdvcmtzLgo+ID4+Pj4+
Pgo+ID4+Pj4+PiBTb21ldGhpbmcgaXMgc3RpbGwgdW5jbGVhciB0byBteXNlbGYuCj4gPj4+Pj4+
IFVzaW5nIEZTQkwgKyByaXNjdi1way9iYmwgdGhlIGxpbnV4IGtlcm5lbCArIGRldmljZSB0cmVl
IGJvb3RzLgo+ID4+Pj4+PiBOZWl0aGVyIEZTQkwgbm9yIHJpc2N2LXBrL2JibCBhcmUgbW9kaWZ5
aW5nIHRoZSBEVC4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gVXNpbmcgRlNCTCArIE9wZW5TQkkgKyBVLUJv
b3QgdGhlIHNhbWUga2VybmVsICsgZGV2aWNlIHRyZWUgaGFuZ3Mgb24KPiA+Pj4+Pj4gcnVubmlu
ZyAvaW5pdC4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gV291bGQgeW91IGhhdmUgYW55IHBvaW50ZXIgb24g
d2hhdCByaXNjdi1wayBkb2VzIHRoYXQgT3BlblNCSS9VLWJvb3QgZG9lc24ndCA/Cj4gPj4+Pj4+
IE9yIG1heWJlIGl0IGlzIHRoZSBvdGhlciB3YXkgYXJvdW5kIC0gT3BlblNCSS9VLWJvb3QgZG9l
cyBzb21ldGhpbmcgdGhhdAo+ID4+Pj4+PiBleHRyYSB0aGF0IHNob3VsZCBub3QgaGFwcGVuLgo+
ID4+Pj4+Cj4gPj4+Pj4gSGVsbG8sCj4gPj4+Pj4KPiA+Pj4+PiBJIGRvbid0IGtub3cgd2hpY2gg
dmVyc2lvbiBvZiBPcGVuU0JJIHlvdSBhcmUgdXNpbmcsIGJ1dCB0aGVyZSBpcwo+ID4+Pj4+IGEg
cHJvYmxlbSB3aXRoIHRoZSBjb21iaW5hdGlvbiBvZiBrZXJuZWwgNS4yLXJjMSBhbmQgT3BlblNC
SQo+ID4+Pj4+IHZlcnNpb25zIGJlZm9yZSBjb21taXQKPiA+Pj4+Pgo+ID4+Pj4+ICBodHRwczov
L2dpdGh1Yi5jb20vcmlzY3Yvb3BlbnNiaS9jb21taXQvNGUyY2Q0NzgyMDg1MzFjNDczNDMyOTBm
MTViNTc3ZDQwYzgyNjQ5Ywo+ID4+Pj4+Cj4gPj4+Pj4gdGhhdCBjYW4gcmVzdWx0IGluIGEgaGFu
ZyBvbiBleGVjdXRpbmcgaW5pdCwgc28gaW4gY2FzZSB5b3UKPiA+Pj4+PiBzaG91bGQgYmUgdXNp
bmcgYW4gb2xkZXIgT3BlblNCSSBidWlsZCB0aGF0IG1pZ2h0IGJlIHRoZSBzb3VyY2UKPiA+Pj4+
PiBvZiB0aGUgcHJvYmxlbSB0aGF0IHlvdSBhcmUgZXhwZXJpZW5jaW5nLgo+ID4+Pj4+Cj4gPj4+
Pj4gUmVnYXJkcywKPiA+Pj4+PiBLYXJzdGVuCj4gPj4+Pj4KPiA+Pj4+Cj4gPj4+PiBJIHZlcmlm
aWVkIHRoZSB1cGRhdGVkIERUIHdpdGggdXBzdHJlYW0ga2VybmVsIGZvciB0aGUgYm9vdCBmbG93
IE9wZW5TQkkKPiA+Pj4+ICsgVS1Cb290ICsgTGludXggb3IgT3BlblNCSSArIExpbnV4Lgo+ID4+
Pj4KPiA+Pj4+IE9wZW5TQkkgc2hvdWxkIGJlIGNvbXBpbGVkIGZvciBzaWZpdmUgcGxhdGZvcm0g
d2l0aCBmb2xsb3dpbmcgYWRkaXRpb25hbAo+ID4+Pj4gYXJndW1lbnQKPiA+Pj4+Cj4gPj4+PiBG
V19QQVlMT0FEX0ZEVF9QQVRIPTxsaW51eCBrZXJuZWwKPiA+Pj4+IHNvdXJjZT4vYXJjaC9yaXNj
di9ib290L2R0cy9zaWZpdmUvaGlmaXZlLXVubGVhc2hlZC1hMDAuZHRiCj4gPj4+Pgo+ID4+Pj4g
RllJOiBJdCB3aWxsIG9ubHkgd29yayB3aGVuIGtlcm5lbCBpcyBnaXZlbiBhIHBheWxvYWQgdG8g
VS1Cb290L09wZW5TQkkKPiA+Pj4+IGRpcmVjdGx5Lgo+ID4+Pj4KPiA+Pj4KPiA+Pj4gSHVtLCBJ
IGFtIHN1cnByaXNlZCBieSB0aGlzIHN0YXRlbWVudC4KPiA+Pj4gSSB3YXMgYWJsZSB0byB2ZXJp
ZnkgdGhlIGxhdGVzdCBEVCBwYXRjaCBzZXJpZSBmcm9tIFBhdWwgd2l0aDoKPiA+Pj4gT3BlblNC
SSArIFUtQm9vdCArIExpbnV4ICYgRFQuCj4gPj4+Cj4gPj4+IEZvbGxvd2luZyB0aGUgT3BlblNC
SSBkb2N1bWVudGF0aW9uIFswXSB3aXRoIFUtQm9vdCBwYXlsb2FkOgo+ID4+PiBGV19QQVlMT0FE
X1BBVEg9PHUtYm9vdF9idWlsZF9kaXI+L3UtYm9vdC5iaW4KPiA+Pj4KPiA+Pj4gSSBnZXQgYW4g
VS1Cb290IHByb21wdCBhbmQgdGhlbiBJIGNhbiBqdXN0IGxvYWQgdGhlIGxpbnV4IGtlcm5lbCBh
bmQKPiA+Pj4gZGV2aWNlIHRyZWUgZnJvbSB0aGUgbmV0d29yay4KPiA+Pj4KPiA+Pj4gWzBdOiBo
dHRwczovL2dpdGh1Yi5jb20vcmlzY3Yvb3BlbnNiaS9ibG9iL21hc3Rlci9kb2NzL3BsYXRmb3Jt
L3NpZml2ZV9mdTU0MC5tZCNidWlsZGluZy1zaWZpdmUtZnU1NDAtcGxhdGZvcm0KPiA+Pj4KPiA+
Pgo+ID4+IENvdWxkIHlvdSBjb25maXJtIHdoaWNoIGdpdCBoYXNoIG9mIFUtYm9vdCB5b3UgYXJl
IGJ1aWxkaW5nLCBhbmQgdGhhdCB0aGUgLmNvbmZpZyBtYXRjaGVzCj4gPj4gdGhlIGRlZmNvbmZp
ZyAob3Igc2VuZCBtZSB0aGUgLmNvbmZpZyB5b3UgdXNlZCk/Cj4gPgo+ID4gU3VyZSwKPiA+Cj4g
PiBPcGVuU0JJOiBhNjM5NWFjZDZjYjJjMzU4NzE0ODFkM2U0ZjBiZWFmNDQ5ZjhjMGZkCj4gPiBV
LUJvb3Q6IChvcmlnaW4vbWFzdGVyKSAzNDRhMGU0MzY3ZDA4MjBiOGViMmVhNGE5MDEzMjQzM2Uw
MzgwOTVmCj4gPiBLZXJuZWw6IGZyb20gUGF1bCBmcm9tIHRoaXMgdGhyZWFkIFsxXQo+ID4KPiA+
IEkgdXNlIHRoZSBzaWZpdmVfZnU1NDBfZGVmY29uZmlnIG9mIFUtQm9vdCB3aXRoIG5vIGFkZGl0
aW9uYWwgY2hhbmdlcy4KPiA+Cj4gPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3NpZml2ZS9yaXNj
di1saW51eC90cmVlL2Rldi9wYXVsdy9kdHMtdjUuMi1yYzEtZXhwZXJpbWVudGFsCj4gPgo+ID4+
Cj4gPj4gSeKAmWQgbGlrZSB0byBnZXQgZXZlcnl0aGluZyB0aGF04oCZcyB3b3JraW5nIGludGVn
cmF0ZWQgaW4gb25lIHBsYWNlIGludG8gYSBmcmVlZG9tLXUtc2RrIHRlc3QgYnJhbmNoLgo+ID4+
Cj4gPj4KPiA+Cj4gPiBMZXQgbWUga25vdyB0aGUgdGVzdCBicmFuY2ggd2hlbiBpdCdzIHVwIDop
Cj4gPgo+ID4gTG95cwo+Cj4gUGxlYXNlIHRha2UgYSBsb29rIGF0IGh0dHBzOi8vZ2l0aHViLmNv
bS90bWFnaWsvZnJlZWRvbS11LXNkay90cmVlL2Z1bmN0aW9uYWxfdGVzdAo+Cj4gV2hlbiBJIGJv
b3RlZCB0aGUgb3JpZ2luYWwgNC4xOSB2bWxpbnV4LmJpbiwgSSBnb3QgdGhpczoKPgo+IEJvb3Rp
bmcga2VybmVsIGluCj4gMgo+IDEKPiAwCj4gIyMgU3RhcnRpbmcgYXBwbGljYXRpb24gYXQgMHg4
MDIwMDAwMCAuLi4KPiBbICAgIDAuMDAwMDAwXSBMaW51eCB2ZXJzaW9uIDQuMTkuMC1zaWZpdmUt
MSsgKHRyb3liQGVwc2lsb24wOSkgKGdjYyB2ZXJzaW9uIDguMy4wIChCdWlsZHJvb3QgMjkKPiBb
ICAgIDAuMDAwMDAwXSBib290Y29uc29sZSBbZWFybHkwXSBlbmFibGVkCj4KPiBXaXRoIHRoZSA1
LjIga2VybmVsLCBJIGdldCBrbm93IG91dHB1dCwgd2hpY2ggSSBhc3N1bWUgaXMgZXhwZWN0ZWQg
YmVoYXZpb3IgdXNpbmcgdGhlCj4gY3VycmVudCBEVFMgcHJvdmlkZWQgYnkgdGhlIFMtbW9kZSBV
Ym9vdC4KPgo+IEJvb3Rpbmcga2VybmVsIGluCj4gMgo+IDEKPiAwCj4gIyMgU3RhcnRpbmcgYXBw
bGljYXRpb24gYXQgMHg4MDIwMDAwMCAuLi4KClRoZSBlYXJseXByaW50ayBzdXBwb3J0IGhhcyBi
ZWVuIHJlbW92ZWQgZnJvbSBsYXRlc3Qga2VybmVsLiBJbnN0ZWFkIG9mCmVhcmx5cHJpbnRrIHdl
IG5vdyB1c2UgZ2VuZXJpYyBlYXJseWNvbiBzdXBwb3J0LgoKVG8gdXNlIGVhcmx5Y29uLCBqdXN0
IGFkZCAiZWFybHljb249c2JpIiBwYXJhbWV0ZXIgaW4geW91ciBrZXJuZWwgYm9vdGFyZ3MuCgpP
biBVLUJvb3QsIGtlcm5lbCBib290YXJncyBjYW4gYmUgY2hhbmdlZCBieSBjaGFuZ2luZyAiYm9v
dGFyZ3MiIFUtQm9vdAplbnZpcm9ubWVudCB2YXJpYWJsZS4KClJlZ2FyZHMsCkFudXAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1h
aWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
