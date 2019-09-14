Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BA9B2A8B
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 10:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xArYVoN7Y2LGBO66o78uWA1BAgbL5KsHAEb5o48AXRs=; b=e0jaDCZ24OOtuW
	5pBDj2MBE/WbRmNo67JjVvs/8b1vfQ+bJ/kawAjZ7WfiWgHh2kxR4gev4Va/wETJAYZPa0o5pesAI
	UCcbLjrSJ1ucfYvvA6OI/Ax8m4yowofkDCz+kQTymx974IcbgFowB0vLL/xSKhF2vU0dJpPpKLvJK
	hqy1ULvoxPPozAD6s4IpJZi5ohpuEgWyt/53K/aV+HWXYWVQOj7/MMqWQRVG7nLiZu3tm5V9Q/4NS
	XsiOIBov1ELO2FH5scmQL2EcOgfpFVGTiEwfPENzXU841IRhEguAN5vS1SmaFe7HKWLZbvkzlq6Zf
	VKtEBwS5XQwMqhTXDbUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i93la-0005bv-1j; Sat, 14 Sep 2019 08:50:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i93kj-00046D-6Q; Sat, 14 Sep 2019 08:49:59 +0000
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5038214C6;
 Sat, 14 Sep 2019 08:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568450995;
 bh=J9o3/Ce1+YLaWOJS+1y9FmaoiXDLsFcat/B4OJD07xQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NvC0HAkbO+X0R/hUr5ElgQAkn9X+DlHgQCaI+WUT3QaLpkyww7ouKYCiu+gLQdPnN
 Zt2iNLvAcaA/7M7mBWG5GC72IVnUlLTjmJnBCwL8Gs+y4/DomRNvqSFSk4OlGnDjoe
 Dtl/nAegdQl/qfiWPrj/maTEs4oYOJwLv1kg+bio=
Received: by mail-wr1-f44.google.com with SMTP id l11so34157089wrx.5;
 Sat, 14 Sep 2019 01:49:54 -0700 (PDT)
X-Gm-Message-State: APjAAAVfwvFVA4JG5ForHCOl1WGefD1rAJMdkk8mNtDJmulh4NQLmbEG
 QYCYyZ6kninxnd6FMX/mN7vK0Wg7Hz33RbyyCUw=
X-Google-Smtp-Source: APXvYqxg6MtzWsHNFmLRbH0IHgwRMp+vQZNFO479wjLXexAnH2ZbcUXa06WI/GBB3zidLYAHo44uDXvnrwuUeLiSDAI=
X-Received: by 2002:adf:fe0f:: with SMTP id n15mr5204507wrr.343.1568450992705; 
 Sat, 14 Sep 2019 01:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <20190619091219.GB7767@fuggles.cambridge.arm.com>
 <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
 <20190619123939.GF7767@fuggles.cambridge.arm.com>
 <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
 <20190624104006.lvm32nahemaqklxc@willie-the-truck>
 <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
 <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
 <CAJF2gTT2c45HRfATF+=zs-HNToFAKgq1inKRmJMV3uPYBo4iVg@mail.gmail.com>
 <CAJF2gTTsHCsSpf1ncVb=ZJS2d=r+AdDi2=5z-REVS=uUg9138A@mail.gmail.com>
In-Reply-To: <CAJF2gTTsHCsSpf1ncVb=ZJS2d=r+AdDi2=5z-REVS=uUg9138A@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Sat, 14 Sep 2019 16:49:40 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTKFwRN6vG3+fQK8BRFskeURjv-Ziv_qb7nc9MSKw0bLA@mail.gmail.com>
Message-ID: <CAJF2gTTKFwRN6vG3+fQK8BRFskeURjv-Ziv_qb7nc9MSKw0bLA@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_014957_369580_FBDB2446 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: julien.thierry@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 christoffer.dall@arm.com, Atish Patra <Atish.Patra@wdc.com>,
 Julien Grall <julien.grall@arm.com>, gary@garyguo.net,
 linux-riscv@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 aou@eecs.berkeley.edu, Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-arm-kernel@lists.infradead.org, Anup Patel <anup.Patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, james.morse@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGVyZSBpcyB0aGUgcHJlc2VudGF0aW9uLCBhbnkgY29tbWVudHMgaXMgd2VsY29tZS4KCmh0dHBz
Oi8vZG9jcy5nb29nbGUuY29tL3ByZXNlbnRhdGlvbi9kLzFzYzI5NUp6blZBZkRJUGllQXF6amN5
VWtjSG5ORlFzSzhGRnFkb0NZODU0L2VkaXQ/dXNwPXNoYXJpbmcKCk9uIEZyaSwgU2VwIDEzLCAy
MDE5IGF0IDM6MTMgUE0gR3VvIFJlbiA8Z3VvcmVuQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gQW5v
dGhlciBpZGVhIGlzIHNlcGVyYXRlIHJlbW90ZSBUTEIgaW52YWxpZGF0ZSBpbnRvIHR3byBpbnN0
cnVjdGlvbnM6Cj4KPiAgLSBzZmVuY2Uudm1hLmIuYXN5Ywo+ICAtIHNmZW5jZS52bWEuYi5iYXJy
aWVyIC8vIHdhaXQgYWxsIGFzeW5jIFRMQiBpbnZhbGlkYXRlIG9wZXJhdGlvbnMgZmluaXNoZWQg
Zm9yIGFsbCBoYXJ0cy4KPgo+IChJIHJlbWVtYmVyIHdobyBtZW50aW9uZWQgbWUgc2VwYXJhdGUg
dGhlbSBpbnRvIHR3byBpbnN0cnVjdGlvbnMgYWZ0ZXIgc2Vzc2lvbi4gQW51cD8gSXMgdGhlIGlk
ZWEgcmlnaHQgPykKPgo+IEFjdHVhbGx5LCBJIG5ldmVyIGNvbnNpZGVyIGFzeWMgVExCIGludmFs
aWRhdGUgYmVmb3JlLCBiZWNhdXNlIGN1cnJlbnQgb3VyIGxpZ2h0IGlvbW11IGRpZCBub3QgbmVl
ZCBpdC4KPgo+IFRoeCBhbGwgcGVvcGxlIGF0dGVuZCB0aGUgc2Vzc2lvbiA6KSBMZXQncyBjb250
aW51ZSB0aGUgdGFsay4KPgo+Cj4gR3VvIFJlbiA8Z3VvcmVuQGtlcm5lbC5vcmc+IOS6jiAyMDE5
5bm0OeaciDEy5pel5ZGo5ZubIDIyOjU55YaZ6YGT77yaCj4+Cj4+IFRoeCBXaWxsIGZvciByZXBs
eS4KPj4KPj4gT24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMzowMyBQTSBXaWxsIERlYWNvbiA8d2ls
bEBrZXJuZWwub3JnPiB3cm90ZToKPj4gPgo+PiA+IE9uIFN1biwgU2VwIDA4LCAyMDE5IGF0IDA3
OjUyOjU1QU0gKzA4MDAsIEd1byBSZW4gd3JvdGU6Cj4+ID4gPiBPbiBNb24sIEp1biAyNCwgMjAx
OSBhdCA2OjQwIFBNIFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+IHdyb3RlOgo+PiA+ID4g
PiA+IEknbGwga2VlcCBteSBzeXN0ZW0gdXNlIHRoZSBzYW1lIEFTSUQgZm9yIFNNUCArIElPTU1V
IDpQCj4+ID4gPiA+Cj4+ID4gPiA+IFlvdSB3aWxsIHdhbnQgYSBzZXBhcmF0ZSBhbGxvY2F0b3Ig
Zm9yIHRoYXQ6Cj4+ID4gPiA+Cj4+ID4gPiA+IGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAx
OTA2MTAxODQ3MTQuNjc4Ni0yLWplYW4tcGhpbGlwcGUuYnJ1Y2tlckBhcm0uY29tCj4+ID4gPgo+
PiA+ID4gWWVzLCBpdCBpcyBoYXJkIHRvIG1haW50YWluIEFTSUQgYmV0d2VlbiBJT01NVSBhbmQg
Q1BVTU1VIG9yIGRpZmZlcmVudAo+PiA+ID4gc3lzdGVtLCBiZWNhdXNlIGl0J3MgZGlmZmljdWx0
IHRvIHN5bmNocm9uaXplIHRoZSBJT19BU0lEIHdoZW4gdGhlIENQVQo+PiA+ID4gQVNJRCBpcyBy
b2xsb3Zlci4KPj4gPiA+IEJ1dCB3ZSBjb3VsZCBzdGlsbCB1c2UgaGFyZHdhcmUgYnJvYWRjYXN0
IFRMQiBpbnZhbGlkYXRpb24gaW5zdHJ1Y3Rpb24KPj4gPiA+IHRvIHVuaWZvcm1seSBtYW5hZ2Ug
dGhlIEFTSUQgYW5kIElPX0FTSUQsIG9yIE9USEVSX0FTSUQgaW4gb3VyIElPTU1VLgo+PiA+Cj4+
ID4gVGhhdCdzIHByb2JhYmx5IGEgYmFkIGlkZWEsIGJlY2F1c2UgeW91J2xsIGxpa2VseSBzdGFs
bCBleGVjdXRpb24gb24gdGhlCj4+ID4gQ1BVIHVudGlsIHRoZSBJT1RMQiBoYXMgY29tcGxldGVk
IGludmFsaWRhdGlvbi4gSW4gdGhlIGNhc2Ugb2YgQVRTLCBJIHRoaW5rCj4+ID4gYW4gZW5kcG9p
bnQgQVRDIGlzIHBlcm1pdHRlZCB0byB0YWtlIG92ZXIgYSBtaW51dGUgdG8gcmVzcG9uZC4gSW4g
cmVhbGl0eSwgSQo+PiA+IHN1c3BlY3QgdGhlIHdvcnN0IHlvdSdsbCBldmVyIHNlZSB3b3VsZCBi
ZSBpbiB0aGUgbXNlYyByYW5nZSwgYnV0IHRoYXQncwo+PiA+IHN0aWxsIGFuIHVuYWNjZXB0YWJs
ZSBwZXJpb2Qgb2YgdGltZSB0byBob2xkIGEgQ1BVLgo+PiBKdXN0IGFzIEkndmUgc2FpZCBpbiB0
aGUgc2Vzc2lvbiB0aGF0IElPVExCIGludmFsaWRhdGUgZGVsYXkgaXMKPj4gYW5vdGhlciB0b3Bp
YywgTXkgbWFpbiBwcm9wb3NhbCBpcyB0byBpbnRyb2R1Y2Ugc3RhZ2UxLnBnZCBhbmQKPj4gc3Rh
Z2UyLnBnZCBhcyBhZGRyZXNzIHNwYWNlIGlkZW50aWZpZXJzIGJldHdlZW4gZGlmZmVyZW50IFRM
QiBzeXN0ZW1zCj4+IGJhc2VkIG9uIHZtaWQsIGFzaWQuIE15IGxhc3QgcGFydCBvZiBzaWxkZXMg
d2lsbCBzaG93IHlvdSBob3cgdG8KPj4gdHJhbnNsYXRlIHN0YWdlMS8yLnBnZCB0byBhcy92bWlk
IGluIFBDSSBBVFMgc3lzdGVtIGFuZCB0aGUgbWV0aG9kCj4+IGNvdWxkIHdvcmsgd2l0aCBTTU1V
LXYzIGFuZCBpbnRlbCBWdC1kLiAoSXQncyByZWdyZXQgZm9yIG1lIHRoZXJlIGlzCj4+IG5vIHRp
bWUgdG8gc2hvdyB5b3UgdGhlIHdob2xlIHNsaWRlcy4pCj4+Cj4+IEluIG91ciBsaWdodCBJT01N
VSBpbXBsZW1lbnRhdGlvbiwgdGhlcmUncyBubyBJT1RMQiBpbnZhbGlkYXRlIGRlbGF5Cj4+IHBy
b2JsZW0uIEJlY2FzdWUgSU9NTVUgaXMgdmVyeSBjbG9zZSB0byBDUFUgTU1VIGFuZCBpbnRlcmNv
bm5lY3Qncwo+PiBkZWxheSBpcyB0aGUgc2FtZSB3aXRoIFNNUCBDUFVzIE1NVSAobm8gUENJLCBW
TSBzdXBwb3J0ZWQpLgo+Pgo+PiBUbyBzb2x2ZSB0aGUgcHJvYmxlbSwgd2UgY291bGQgZGVmaW5l
IGEgYXN5bmMgbW9kZSBpbiBzZmVuY2Uudm1hLmIgdG8KPj4gc2xvdmUgdGhlIHByb2JsZW0gYW5k
IGZpbmlzaGVkIHdpdGggcGVyX2NwdV9pcnEvZXhjZXB0aW9uLgo+Pgo+PiAtLQo+PiBCZXN0IFJl
Z2FyZHMKPj4gIEd1byBSZW4KPj4KPj4gTUw6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LWNza3kvCgoKCi0tIApCZXN0IFJlZ2FyZHMKIEd1byBSZW4KCk1MOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1jc2t5LwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yaXNjdgo=
