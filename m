Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F06CF376
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 09:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcE/LbeNIkEarJ4CoNR3wuf75FDTuSlPxOxrEgp3Ifc=; b=B04KXN104j9J2t
	QdJ+8hki/gjJwq/roBLnrYGUuwCMvLPboY5wg+paonKY0mxgOgCuyFWSriEv0QxA6Q8Y3UHFhK09U
	1nxhnagHS2MvQBE29k8fafiOzXwxPHdl6pfNI4dQFUaNzna6xJ07GYj1X5DzNu4MkhpZkQ+Zymqt4
	PK8x/k7mTXkeQZ4YrOgC0Qy41MnSh7bJDrJmkT3PqXmwRK3GxTA9VArIwWy81/nrMHu3lW+cD3Qxa
	p14t8tYOzI7FAMoWSVmBlNgQdr3tupC2djKqdhj8l+5mOWBgAY04v9JoahyOBbTFQ+rHh12yHJM0Q
	/bGnHegOYyLLy8CWL9/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHjkM-0006eI-Pj; Tue, 08 Oct 2019 07:17:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHjkJ-0006dw-3J
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 07:17:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id r17so1672051wme.0
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 00:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IwK4mlHc6Gx64o5Lj2ODoNccGryteDZuUUgHtX5TozU=;
 b=jLK0ShU+zxGZZKQE7kpJeaf3SW1PV6pfH85s/KK268KNTpbps9TvEPm8AS43nYCcEY
 cAZOqnSQCL83SYdghP46zg+yBEmuvUdy2xmRaCwTsh36XV6XIJ6kRFY9PGTlO69PeLJb
 Xo1p0BF2RodRb6Jl2oMWvdhRG9rNIjyC9tls5QC7XVCOyc32u3Bxp1qAlnxedpB21Gyv
 jtdYPS4Q03x4rhvk0SGtWyb4pWyIYCbQcoIiwYG27V0n+SMSYJtvoTQuQktBqh7ALwTI
 E9y4Tf6D7E1NtejK1/MChXyJGZyg4NvrmvBKMKD0HD1+ZcJwsa/yBjEmNm8RBDADKt8o
 0q0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IwK4mlHc6Gx64o5Lj2ODoNccGryteDZuUUgHtX5TozU=;
 b=OYKAsSuDoJCGtGtlcdiBujFIh+trBo/zvRYwqcTJBHpVSHFSL5lZynR/UkV4o64AO/
 FEpP0DXn7AmT9n14Fgkv3hEsYm75gipyyP/jnI8pVXGU4Taunvu7abGWDRGJwysqGujq
 9iPh01wKk1etZ1NrkYNpXKiqOrPgeV1K//7I3vTKYN+hAM4l+IS4H1+GjbG+EWGbwWrW
 iRg++Ni4+U7ffZta+t7D+g0r8T/AOogfkdojTOAgWbdatv5WwxxuHIlsjxKinFWC+tD+
 QJ4PFK9+4nyDT0tqhknLv24gl0sGscZZrF4hNVe5dJem7WeTm6e3Y7hT+TQgqRCLdZ7i
 QqtQ==
X-Gm-Message-State: APjAAAWbCOLjEDgPZO3ZNnKgUFi4YdTOHgx1bBKH7/9rejlnOfVWmPFr
 FMr7IM5FTsQhjarwPUzBKHogxpIjqlyWQTFrikNEqg==
X-Google-Smtp-Source: APXvYqwRv+6npBPJ8JnU82bNwkOcudoR87xu6+9HHeNnZldb2LuXCm7lUQm/mW8KSeLqre53OtXQj2DuPuBpEATc6DU=
X-Received: by 2002:a05:600c:22da:: with SMTP id
 26mr2385613wmg.177.1570519041241; 
 Tue, 08 Oct 2019 00:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net> <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
 <20191008043014.GA23380@aurel32.net>
 <CAPSAq_znsoOrLsA_rPbmq=e2syZA9MA=-oaZbda5KRiZGG9yyg@mail.gmail.com>
 <97CDD0F9-32F9-4C14-8211-63454C5C379A@aurel32.net>
In-Reply-To: <97CDD0F9-32F9-4C14-8211-63454C5C379A@aurel32.net>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 8 Oct 2019 12:47:10 +0530
Message-ID: <CAAhSdy08a5NOCPvXHd0V2dtQxUguCOkL__RE9rBmuA1YVY=bTA@mail.gmail.com>
Subject: Re: Fail to bring hart online on HiFive Unleashed
To: Aurelien Jarno <aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_001723_142718_FA980225 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>, Lukas Auer <lukas.auer@aisec.fraunhofer.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgOCwgMjAxOSBhdCAxMjowMyBQTSBBdXJlbGllbiBKYXJubyA8YXVyZWxpZW5A
YXVyZWwzMi5uZXQ+IHdyb3RlOgo+Cj4gTGUgOCBvY3RvYnJlIDIwMTkgMDg6MTQ6NTggR01UKzAy
OjAwLCBEYXZpZCBBYmR1cmFjaG1hbm92IDxkYXZpZC5hYmR1cmFjaG1hbm92QHNpZml2ZS5jb20+
IGEgw6ljcml0IDoKPiA+T24gVHVlLCBPY3QgOCwgMjAxOSBhdCA3OjMwIEFNIEF1cmVsaWVuIEph
cm5vIDxhdXJlbGllbkBhdXJlbDMyLm5ldD4KPiA+d3JvdGU6Cj4gPj4KPiA+PiBPbiAyMDE5LTEw
LTA3IDIyOjE5LCBBdGlzaCBQYXRyYSB3cm90ZToKPiA+PiA+IFRoYW5rcyBmb3IgdGhlIGRldGFp
bGVkIGFuYWx5c2lzLiBDYW4geW91IHBsZWFzZSBrZWVwIG1lIGFuZCBkYXZpZAo+ID5pbgo+ID4+
ID4gY2Mgd2hlbiB5b3UgcmVwb3J0IHRoZSBpc3N1ZSB0byBVLWJvb3QgPwo+ID4+Cj4gPj4gWWVw
LiBJIGhhdmUgcHJvZ3Jlc3NlZCBhIGJpdCBvbiB0aGF0LCBhbmQgbm93IEkgYW0gbm90IGNvbnZp
bmNlZCBpdCdzCj4gPmFuCj4gPj4gVS1ib290IGlzc3VlLCBpdCBjYW4gYmUgYSBHQ0MgaXNzdWUu
Cj4gPj4KPiA+PiBIZXJlIGFyZSB0aGUgY29uZGl0aW9ucyB0byByZXByb2R1Y2UgdGhlIGJ1ZzoK
PiA+PiAtIFUtYm9vdCBydW5zIG9uIGhhcnQgMSwgMiBvciAzCj4gPj4gLSB0aGUgYXV0b2Jvb3Qg
cHJvY2VzcyBpcyBub3QgaW50ZXJydXB0ZWQKPiA+PiAtIGV4dGxpbnV4IGlzIHVzZWQgdG8gYm9v
dCB0aGUga2VybmVsCj4gPj4gLSBhcmNoL3Jpc2N2L2xpYi9ib290bS5jIGlzIGNvbXBpbGVkIHdp
dGggR0NDIDkgKHdvcmtzIGZpbmUgd2l0aCBHQ0MKPiA+OCkKPiA+Pgo+ID4+IFdoZW4gdGhlIHBy
b2JsZW0gaGFwcGVucywgdGhlIG1pc3NpbmcgaGFydCBhY3R1YWxseSBlbmRzIGl0cwo+ID5leGVj
dXRpb24KPiA+PiBpbiBhbiBpbGxlZ2FsIGluc3RydWN0aW9uIHRyYXAgdHJ5aW5nIHRvIGV4ZWN1
dGUgdGhlIEZEVCAoSSBvbmx5Cj4gPm5vdGljZWQKPiA+PiB0aGF0IHJlY2VudGx5IGFzIHRoZSBt
ZXNzYWdlIHdhcyBoaWRkZW4gYnkgdGhlIHVzZSBvZiBlYXJseWNvbj1zYmkpOgo+ID4+Cj4gPj4g
fCBTaUZpdmUgRlNCTDogICAgICAgMjAxOC0wMy0yMAo+ID4+IHwgSGlGaXZlLVUgc2VyaWFsICM6
IDAwMDAwMjQ2Cj4gPj4gfAo+ID4+IHwgT3BlblNCSSB2MC40LTUwLWczMGYwOWZiIChPY3QgIDYg
MjAxOSAyMTo1ODowNSkKPiA+PiB8ICAgIF9fX18gICAgICAgICAgICAgICAgICAgIF9fX19fIF9f
X18gX19fX18KPiA+PiB8ICAgLyBfXyBcICAgICAgICAgICAgICAgICAgLyBfX19ffCAgXyBcXyAg
IF98Cj4gPj4gfCAgfCB8ICB8IHxfIF9fICAgX19fIF8gX18gfCAoX19fIHwgfF8pIHx8IHwKPiA+
PiB8ICB8IHwgIHwgfCAnXyBcIC8gXyBcICdfIFwgXF9fXyBcfCAgXyA8IHwgfAo+ID4+IHwgIHwg
fF9ffCB8IHxfKSB8ICBfXy8gfCB8IHxfX19fKSB8IHxfKSB8fCB8Xwo+ID4+IHwgICBcX19fXy98
IC5fXy8gXF9fX3xffCB8X3xfX19fXy98X19fXy9fX19fX3wKPiA+PiB8ICAgICAgICAgfCB8Cj4g
Pj4gfCAgICAgICAgIHxffAo+ID4+IHwKPiA+PiB8IFBsYXRmb3JtIE5hbWUgICAgICAgICAgOiBT
aUZpdmUgRnJlZWRvbSBVNTQwCj4gPj4gfCBQbGF0Zm9ybSBIQVJUIEZlYXR1cmVzIDogUlY2NEFD
REZJTVNVCj4gPj4gfCBQbGF0Zm9ybSBNYXggSEFSVHMgICAgIDogNQo+ID4+IHwgQ3VycmVudCBI
YXJ0ICAgICAgICAgICA6IDIKPiA+PiB8IEZpcm13YXJlIEJhc2UgICAgICAgICAgOiAweDgwMDAw
MDAwCj4gPj4gfCBGaXJtd2FyZSBTaXplICAgICAgICAgIDogMTA0IEtCCj4gPj4gfCBSdW50aW1l
IFNCSSBWZXJzaW9uICAgIDogMC4yCj4gPj4gfAo+ID4+IHwgUE1QMDogMHgwMDAwMDAwMDgwMDAw
MDAwLTB4MDAwMDAwMDA4MDAxZmZmZiAoQSkKPiA+PiB8IFBNUDE6IDB4MDAwMDAwMDAwMDAwMDAw
MC0weDAwMDAwMDdmZmZmZmZmZmYgKEEsUixXLFgpCj4gPj4gfAo+ID4+IHwKPiA+PiB8IFUtQm9v
dCAyMDE5LjEwLXJjNC0wMDAzNy1nZGFjNTFlOWFhZi1kaXJ0eSAoT2N0IDA2IDIwMTkgLSAyMTo1
Njo1MQo+ID4rMDAwMCkKPiA+PiB8Cj4gPj4gfCBDUFU6ICAgcnY2NGltYWZkYwo+ID4+IHwgTW9k
ZWw6IFNpRml2ZSBIaUZpdmUgVW5sZWFzaGVkIEEwMAo+ID4+IHwgRFJBTTogIDggR2lCCj4gPj4g
fAo+ID4+IHwgTU1DOiAgIHNwaUAxMDA1MDAwMDptbWNAMDogMAo+ID4+IHwgSW46ICAgIHNlcmlh
bEAxMDAxMDAwMAo+ID4+IHwgT3V0OiAgIHNlcmlhbEAxMDAxMDAwMAo+ID4+IHwgRXJyOiAgIHNl
cmlhbEAxMDAxMDAwMAo+ID4+IHwgTmV0OiAgIGV0aDA6IGV0aGVybmV0QDEwMDkwMDAwCj4gPj4g
fCBIaXQgYW55IGtleSB0byBzdG9wIGF1dG9ib290OiAgMAo+ID4+IHwgc3dpdGNoIHRvIHBhcnRp
dGlvbnMgIzAsIE9LCj4gPj4gfCBtbWMwIGlzIGN1cnJlbnQgZGV2aWNlCj4gPj4gfCBTY2Fubmlu
ZyBtbWMgMDoyLi4uCj4gPj4gfCBGb3VuZCAvYm9vdC9leHRsaW51eC9leHRsaW51eC5jb25mCj4g
Pj4gfCBSZXRyaWV2aW5nIGZpbGU6IC9ib290L2V4dGxpbnV4L2V4dGxpbnV4LmNvbmYKPiA+PiB8
IDUxMCBieXRlcyByZWFkIGluIDUgbXMgKDk5LjYgS2lCL3MpCj4gPj4gfCBVLUJvb3QgbWVudQo+
ID4+IHwgMTogICAgICBrZXJuZWwgNS4zLjQKPiA+PiB8IDI6ICAgICAgRGViaWFuIEdOVS9MaW51
eCBrZXJuZWwgNS4zLjAtdHJ1bmstcmlzY3Y2NAo+ID4+IHwgRW50ZXIgY2hvaWNlOiAxCj4gPj4g
fCAxOiAgICAgIGtlcm5lbCA1LjMuNAo+ID4+IHwgUmV0cmlldmluZyBmaWxlOiAvYm9vdC92bWxp
bnV4LTUuMy40Cj4gPj4gfCA5NDg2MDc2IGJ5dGVzIHJlYWQgaW4gNDgxMyBtcyAoMS45IE1pQi9z
KQo+ID4+IHwgYXBwZW5kOiByb290PS9kZXYvbW1jYmxrMHAyIHJ3IGNvbnNvbGU9dHR5U0lGMCBy
b290d2FpdAo+ID4+IHwgUmV0cmlldmluZyBmaWxlOiAvYm9vdC9oaWZpdmUtdW5sZWFzaGVkLWEw
MC5kdGIKPiA+PiB8IDYwODggYnl0ZXMgcmVhZCBpbiA3IG1zICg4NDguNiBLaUIvcykKPiA+PiB8
ICMjIEZsYXR0ZW5lZCBEZXZpY2UgVHJlZSBibG9iIGF0IDg4MDAwMDAwCj4gPj4gfCAgICBCb290
aW5nIHVzaW5nIHRoZSBmZHQgYmxvYiBhdCAweDg4MDAwMDAwCj4gPj4gfCAgICBVc2luZyBEZXZp
Y2UgVHJlZSBpbiBwbGFjZSBhdCAwMDAwMDAwMDg4MDAwMDAwLCBlbmQKPiA+MDAwMDAwMDA4ODAw
NDdjNwo+ID4+IHwKPiA+PiB8IFN0YXJ0aW5nIGtlcm5lbCAuLi4KPiA+PiB8Cj4gPj4gfCBleGNl
cHRpb24gY29kZTogMiAsIElsbGVnYWwgaW5zdHJ1Y3Rpb24gLCBlcGMgICwgcmEgODgwMDAwMDQK
PiA+ODgwMDAwMDAKPiA+PiB8ICMjIyBFUlJPUiAjIyMgUGxlYXNlIFJFU0VUIHRoZSBib2FyZCAj
IyMKPiA+Cj4gPkkgdGhpbmssIHRoYXQncyB0aGUgc2FtZSBpc3N1ZSBJIGhhZCAob3Igc3RpbGwg
aGF2ZSkgYSB3ZWVrIGFnby4KPiA+SnVzdCByZW1pbmRlciB0aGF0IGtlcm5lbCA1LjMgaW50cm9k
dWNlZCBhIDY0LWJ5dGUgaGVhZGVyICh0aHVzIG5vCj4gPm5lZWQgdG8gd3JhcCBrZXJuZWwpIGF0
IGxlYXN0IGZvciBJbWFnZSB0YXJnZXQuIFRodXMgaXQncyBib290aSB0aGF0Cj4gPmJvb3RzIHRo
ZSBrZXJuZWwgb24gVS1Cb290IHNpZGUuCj4gPlRodXMgdGhlIDFzdCBpbnN0cnVjdGlvbiBvZiB0
aGF0IGhlYWRlciBpcyAiaiAweDQwIiAodG8gdGhlIGJlZ2lubmluZwo+ID5vZiB0aGUgYWN0dWFs
IGtlcm5lbCkuICBBbmQgODgwMDAwMDQgd291bGQgZGVmaW5pdGVseSBob2xkIGFuIGlsbGVnYWwK
PiA+aW5zdHJ1Y3Rpb24uCj4gPgo+ID4wMDAwMDAwMDAwMDAwMDAwIDwuZGF0YT46Cj4gPjA6ICAg
ICAgIDgxYTAgICAgICAgICAgICAgICAgICAgIGogICAgICAgMHg0MAo+ID4yOiAgICAgICAwMDAw
ICAgICAgICAgICAgICAgICAgICB1bmltcAo+ID40OiAgICAgICAwMDAwICAgICAgICAgICAgICAg
ICAgICB1bmltcAo+ID42OiAgICAgICAwMTAwICAgICAgICAgICAgICAgICAgICBub3AKPiA+Wy4u
XQo+Cj4gSG1tIHRoYXQncyB0aGUgYmVnaW5uaW5nIG9mIHRoZSBrZXJuZWwgY29kZS4gVGhlIGFk
ZHJlc3MgODgwMDAwMDQKPiBhY3R1YWxseSBjb3JyZXNwb25kcyB0byB0aGUgRkRULiBTbyB0aGUg
aGFydCBlbmRpbmcgdXAgaW4gYSB0cmFwCj4gYWN0dWFsbHkgdHJpZXMgdG8gYm9vdCB0aGUgRkRU
IGluc3RlYWQgb2YgdGhlIGtlcm5lbC4KPgo+IEkgaGF2ZW4ndCBzcG90dGVkIGFueSBvYnZpb3Vz
IGRpZmZlcmVuY2VzIGJldHdlZW4gYm9vdG0ubyBjb21waWxlZCB3aXRoCj4gR0NDIDggYW5kIEdD
QyA5LiBJIHdvbmRlciBpZiB0aGVyZSBpcyBzb21laG93IGEgcmFjZSBjb25kaXRpb24gYmVjYXVz
ZQo+IHNvbWUgaGFydHMgYXJlIGFscmVhZHkgZXhlY3V0aW5nIGxpbnV4IHdoaWxlIHRoZSBsYXN0
IG9uZSBpcyBzdGlsbAo+IGV4ZWN1dGluZyBVLWJvb3QuCgpJIHN1c3BlY3QgdGhpcyBpcyBiZWNh
dXNlIG9mIGZyYWdpbGUgc2Vjb25kYXJ5IEhBUlQgc3Bpbm5pbmcgbG9naWMKZXZlcnl3aGVyZSAo
T3BlblNCSSwgVS1Cb290LCBhbmQgTGludXgpLiBPbmNlIHdlIGhhdmUgU0JJIEhTTQpleHRlbnNp
b24gYXZhaWxhYmxlIGluIE9wZW5TQkksIHRoZSBzZWNvbmRhcnkgSEFSVHMgd2lsbCBzbGVlcCBp
bgpXRkkgYW5kIHdpbGwgYmUgc2VsZWN0aXZlbHkgd29rZW4tdXAgdXNpbmcgU0JJIGNhbGxzIGZy
b20gTGludXguCgpSZWdhcmRzLApBbnVwCgo+Cj4gLS0KPiBBdXJlbGllbiBKYXJubyAgICAgICAg
ICAgICAgICAgICAgICAgICAgR1BHOiA0MDk2Ui8xREREOEM5Qgo+IGF1cmVsaWVuQGF1cmVsMzIu
bmV0ICAgICAgICAgICAgICAgICBodHRwOi8vd3d3LmF1cmVsMzIubmV0Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LXJpc2N2IG1haWxp
bmcgbGlzdAo+IGxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxp
c3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
