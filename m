Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484B82E4E5
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 21:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bg33zLzFO2qliFkiAR6nz8JrYjOdfAZoHMqj0sqg74c=; b=kW3m9Z76EEZxRa
	g44rjCc418epHWovuvbsyAH3E7yLuhtsYcda6DGBft6oWE/En76khb3wMps1HHzXt/M11TV5KDYRZ
	OJ0Z5Hj0kRV9psCgbCjLLY0DHfxY/VSx3izXm3lCTQjHWX7b9rb+GGFid4In3TzddMMr/JVaywPt0
	IPAiFSszMJUUczZBeeZEuWio059S4FaQ/x7fxzdOn2qlNS5oNvMFC5Sf4UEo5odsGJhxLGRGfiWjk
	la5B3Ux5zsVsKF4nODAQZBhz0Anv8UWuZzSYvM94jcT9vgSeIo1c0mGrUoyW8DOqTf4y3uJavvrMC
	WgSU7PpbQkJ5diooZY+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3oA-00071b-Az; Wed, 29 May 2019 19:00:18 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3o0-0005Xu-0d
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 19:00:11 +0000
Received: from excalibur.cnev.de ([84.44.151.89]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MVe5c-1h4WWT32Yu-00Rcrv; Wed, 29 May 2019 20:59:53 +0200
Received: from karsten by excalibur.cnev.de with local (Exim 4.89)
 (envelope-from <merker@debian.org>)
 id 1hW3nk-0005w6-0B; Wed, 29 May 2019 20:59:52 +0200
Date: Wed, 29 May 2019 20:59:51 +0200
From: Karsten Merker <merker@debian.org>
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
Subject: Re: 5.2-rc1 boot on Unleashed
Message-ID: <20190529185951.5rsoozymr32xychb@excalibur.cnev.de>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
 <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
 <4572851B-EF46-45A1-A806-663894673EF9@sifive.com>
 <MN2PR04MB60610DD66EC6E93C25D18F5F8D1F0@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm1s0hd5ln.fsf@suse.de>
 <E42C85A7-47D6-4A8E-B9C8-A5D42057A3F3@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E42C85A7-47D6-4A8E-B9C8-A5D42057A3F3@sifive.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Provags-ID: V03:K1:L2MWvKcMPFr3bKHiIc8ApxFXuOVy5FsviEa+ezYYBobti5JslSs
 3xRo34yVgX4iff3lXhy47a3OJeSJ58fHuQCpV/GEW7xQcL/sZdM9hRm9e3QsxBfQOeP6aiO
 KcbdUsdLb4leQs4f9jtzEuEBl0Zk5XF0gVlNsSt1Fg57ZA3OlMwtNRcgIr5ds2Yre99q/0e
 Lk1KHc56bh9G34AYwn+jw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FVIT/rY3fe8=:PUXXhibUPYEHjOHlmFzbL/
 qZaxq1Cf8a/YcrNbw6YBZgvkYNjxSH6gVAkABjFdEUwME+VgUhd3YYU7E+KrxjVuefrw+NgHU
 HRQmyba0I6DfGit4+Iblpltk6ePm9TFeh/Jhe+9VBnlKsbTNuwga+7f1on5e47vy78Ge1RY3W
 HkCxI7XeqPyca+ebcZBn3kesVaQOGUbNWqrbarHlKWn4fiUS2E3lnh+2w0j3riGtFrNqkd2Yj
 ae3iYvVEj4MlkdOJ0GxozvkE2Tqgv84w/gzDZuK4mW2FTaN5rN7ayXD2ZdjVnc1cYCS4taDda
 jFNHARp1KN66uPMuuw7+YnGiEosYvR4Q8whC0emAb3iAmqqOtx9NS7pRlVjMD5nFnMU9yf3gc
 XN95USHgkPbCLvyOxk2c9JCIcAUg5qkBnW57VCgPMYxkEnSM33HIUbHXvqzy6JyyRnQL2ed1M
 2XhpByOcmWCWQAe0jS//hJIah7OqqWwzhjCFtp30ZXSDxROyWAiYQMNACjX0IMou5EiP8TiEt
 6T7uNGt8dQC1a0RiZdFMr/h+EnpWuV/16ngRuAG+OgTA4EB65rFvLQkq00asSKQW5B2Bq0K09
 /T+nYTNi2ALYXW2A1QIkIfg9hQ+V/CLXDHecwWY8DFtDoHvPTR7SvTIaGt2oPB10vqCIBfHO+
 UWTox8LNtxg8sRHwiDhJNlOwj+VC77/94gve+FNYgYw+T4WxExxlEi6E8F2ctw57scLtixuID
 weQU0ljCqmBYuM5Q7SA8O4cnbKkUuUcXJeM3Lw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_120008_521917_FED1D467 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Andreas Schwab <schwab@suse.de>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Lukas Auer <lukas.auer@aisec.fraunhofer.de>,
 Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjksIDIwMTkgYXQgMTI6Mzg6NDJQTSAtMDUwMCwgVHJveSBCZW5qZWdlcmRl
cyB3cm90ZToKPiA+IE9uIE1heSAyOSwgMjAxOSwgYXQgMzozMSBBTSwgQW5kcmVhcyBTY2h3YWIg
PHNjaHdhYkBzdXNlLmRlPiB3cm90ZToKPiA+IAo+ID4gT24gTWFpIDI5IDIwMTksIEFudXAgUGF0
ZWwgPEFudXAuUGF0ZWxAd2RjLmNvbT4gd3JvdGU6Cj4gPiAKPiA+PiBUbyBhY2hpZXZlIHRoaXMs
IHdlIG5lZWQgdG8gZW5zdXJlIHRoYXQgdXNlcnMgYXJlIGFibGUgdG8gYm9vdCBrZXJuZWwgSW1h
Z2UKPiA+PiBhbmQgSW1hZ2UuZ3ogd2l0aG91dCBlbWJlZGRpbmcgaXQgaW4gT3BlblNCSS9CQkwu
Cj4gPiAKPiA+IEVzcGVjaWFsbHkgeW91IG5lZWQgdG8gZW5zdXJlIHRoYXQgeW91IGNhbiBsb2Fk
IGEgc2VwYXJhdGUgaW5pdHJkLAo+ID4gd2l0aG91dCB0aGUgbmVlZCB0byBlbmNhcHN1bGF0ZSBp
dCBmdXJ0aGVyIGFzIGl0IGlzIGN1cnJlbnRseSByZXF1aXJlZAo+ID4gd2l0aCB1LUJvb3QgbG9h
ZGluZy4KPiA+IAo+ID4gQW5kcmVhcy4KPiA+IAo+IAo+IFRoaXMgaGFzIGJlZW4gcG9zc2libGUg
Zm9yIGF0IGxlYXN0IDYgbW9udGhzIG5vdyB3aXRoIHRoZSBsZWdhY3kgSGlGaXZlLVUtYm9vdAo+
IHRoYXQgaXMgaW50ZWdyYXRlZCBpbiBodHRwczovL2dpdGh1Yi5jb20vc2lmaXZlL2ZyZWVkb20t
dS1zZGsKPiAKPiBDdXJyZW50bHkgdGhlIGJ1aWxkIHNjcmlwdHMgZ2VuZXJhdGUgYSBzaW5nbGUg
aGlmaXZldS5maXQgaW1hZ2UgdGhhdCBVLWJvb3QKPiBsb2FkcywgaG93ZXZlciBpdCBpcyByZWxh
dGl2ZWx5IHN0cmFpZ2h0Zm9yd2FyZCB0byBjaGFuZ2UgdGhlIHVFbnYudHh0IGZpbGUKPiB0byBs
b2FkIEJCTCwgdGhlIGtlcm5lbCwgZGV2aWNlIHRyZWUsIGFuZCBpbml0cmQgc2VwYXJhdGVseS4K
PiAKPiBJZiBzb21lIGV4YW1wbGVzIChhbmQgZmxhc2hhYmxlIGJpbmFyeSBpbWFnZXMpIGRlbW9u
c3RyYXRpbmcgdGhpcyB3b3VsZAo+IGJlIHVzZWZ1bCwgbGV0IG1lIGtub3cgYW5kIEkgd2lsbCBt
YWtlIHNvbWUgdXBkYXRlcy4KPiAKPiBXaGF0IEkgY291bGQgdXNlIHNvbWUgaGVscCBvbiBpcyBo
b3cgd2Ugc2hvdWxkIGJlIHVzaW5nIAo+IGNvbmZpZ19kaXN0cm9fYm9vdGNtZC5oIGluIHUtYm9v
dCB0byBmb2xsb3cgd2hhdCBvdGhlciBhcmNoaXRlY3R1cmVzCj4gaGF2ZSBkb25lLCBvciBpZiB0
aGF0IGFwcHJvYWNoIGlzIG5lZWRsZXNzbHkgY29tcGxpY2F0aW5nIHRoaW5ncyB0aGF0Cj4gd2Ug
Y291bGQgZG8gaW4gYSBtdWNoIGNsZWFuZXIgd2F5IHdpdGggYSBjbGVhbiBzbGF0ZS4KCkhlbGxv
LAoKc3BlYWtpbmcgd2l0aCBteSBMaW51eCBkaXN0cmlidXRpb24gbWFpbnRhaW5lciBoYXQgb24s
IHlvdSBzaG91bGQKZGVmaW5pdGVseSB1c2UgY29uZmlnX2Rpc3Ryb19ib290Y21kLmggYXMgdGhh
dCBpcyB0aGUgaW50ZXJmYWNlCnRoYXQgYWxsIGJpbmFyeSBMaW51eCBkaXN0cmlidXRpb25zIGV4
cGVjdCBmcm9tIFUtQm9vdCBub3dhZGF5cy4gClBsZWFzZSBkb24ndCB0cnkgdG8gaW52ZW50IHlv
dXIgb3duLCBpbmNvbXBhdGlibGUgYm9vdAplbnZpcm9ubWVudDsgd2UgaGF2ZSBoYWQgdGhhdCBz
aXR1YXRpb24gb24gYXJtLWJhc2VkIHN5c3RlbXMgZm9yCnllYXJzIGJlZm9yZSBjb25maWdfZGlz
dHJvX2Jvb3RjbWQuaCB3YXMgaW50cm9kdWNlZCBpbiAyMDE0IGFuZAppdCB3YXMgaG9ycmlibGUu
ICBSZWFsbHkgbm9ib2R5IHdhbnRzIHRvIGhhdmUgdGhhdCBhZ2FpbiBvbgptb2Rlcm4gc3lzdGVt
cy4KCk1haW5saW5lIFUtQm9vdCBhbHJlYWR5IHVzZXMgdGhlIGRpc3RybyBib290Y21kIGVudmly
b25tZW50IGZvcgp0aGUgcWVtdSAidmlydCIgbWFjaGluZSBhbmQgaXQgd29ya3Mgd2VsbC4KClJl
Z2FyZHMsCkthcnN0ZW4KLS0gCkljaCB3aWRlcnNwcmVjaGUgaGllcm1pdCBhdXNkcsO8Y2tsaWNo
IGRlciBOdXR6dW5nIHNvd2llIGRlcgpXZWl0ZXJnYWJlIG1laW5lciBwZXJzb25lbmJlem9nZW5l
biBEYXRlbiBmw7xyIFp3ZWNrZSBkZXIgV2VyYnVuZwpzb3dpZSBkZXIgTWFya3QtIG9kZXIgTWVp
bnVuZ3Nmb3JzY2h1bmcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJpc2N2Cg==
