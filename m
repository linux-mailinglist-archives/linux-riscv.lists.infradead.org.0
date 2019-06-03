Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1A5339A2
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 22:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvj7FvgeMtrKjar33j1EpJMYv8wwU4zzVaIqIPElFDs=; b=oeRxOXRcZGk+Tf
	KW9UGy02BOclx0aoAbvY9iPRbDCu7SxtcamK7z2rirT4WBRlVlfadQO8Ggd0DnJLSbxN3sKrrVebm
	3Bnc4llWriIvM5btWStAALX89l8AByjPn7fbkHHTY8zCj0PMyljBLpjzjhKaBSoMzc2WlCcpclX0e
	q6tcYLhf1ALV+rDNAae+rKhVLPnjjf8C2Nt0sr0qIpT5XZlLzFHoxd1Ro12gSzG6quF1I4QJLzcCS
	QECTXxBtqpkXAsw4le4Te7S0tACUqq7qR4/UHuReIGqH5p3UX1vTthVpJY8oCCioP0N+VaibBNent
	2fNDjE7xcvP+vmns6nPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXtP0-0003AO-Lo; Mon, 03 Jun 2019 20:17:54 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXtOw-00039w-EA
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 20:17:52 +0000
Received: by mail-it1-x144.google.com with SMTP id j204so23383822ite.4
 for <linux-riscv@lists.infradead.org>; Mon, 03 Jun 2019 13:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=tE8ZvQ793ioxSGN7ljLAbUX0SEmm8IkMIDQGFixa9Y8=;
 b=g8VMLm1JOpHJ9dtp/q2hTw06Lqf2nLs1nc/2mC4233i6YVCfeM4G8hLpHmH2Xw9Sb+
 C9SxRjyTZ2/wQuYR22lyq4rezt0mAbNRQfWsXFku2Io8RT8yao8bqM/tWr1HCDmZQVpY
 kouqWN6jH4XXPXCXzhCPMsyclMgox7H9lVixqkxjgrOdJ58SVT/nH/FJvUQgrUShyclR
 IXR4hM87sgk3xZ82lnzm1SL7FwP9dtSpE48njZt+NtcZP0G4CNl47xCJIb0ixigzUdts
 KpZG84JsFl66AcEhNa307V1XhL/XmzAheKv+8Z0X8UiVhvsUGEzlFiLwNqNkHnz4skg/
 1LAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=tE8ZvQ793ioxSGN7ljLAbUX0SEmm8IkMIDQGFixa9Y8=;
 b=C723FjpZD4oPIYzlrfcrL1KRZUf92FoVUsrywjqd39Zu56cM4ZcfIG5Utgj4Iplm+P
 /FCRPvcw32CVf4HD53QLRtofue35B/GvCG5qPpC3NuQHJzQtirjvFXzeKEkvVSBgggK5
 +aXQrsORnDlDvgxrVAvOk3dnHirQI74HjVy4IfONp4qClTFr2G+kD3z7rGNfaPi3rV/Z
 4xMcOlSoOw+FI2Yo/+J53Sz+oR8SWY4+/QT0XScpzfal+zKYxP9GkeioHp3GOtWRx6N+
 vD4vFrVTacglZPby8R/JC4+2EParxtokJTitNCFZjMnrI3kV1ly33v9HOTwfMlWmr6TB
 U+Vw==
X-Gm-Message-State: APjAAAXGKGMEekP6NdaPDgypPbEX+hBwqWr8i2GCUGkcFUyIXqCcOSqX
 l7uFB5Otem3nqLX8i6M5YB1+wA==
X-Google-Smtp-Source: APXvYqw1etx/ZHTsfMnueSCEnl3h3kPLq6v4eMcr+t53a4vcXgj1Zwd328kEU6KsjjpRQ2IzdtHDNA==
X-Received: by 2002:a02:a384:: with SMTP id y4mr18255340jak.77.1559593068821; 
 Mon, 03 Jun 2019 13:17:48 -0700 (PDT)
Received: from [192.168.1.138] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id i141sm6469654ite.20.2019.06.03.13.17.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 13:17:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Testing the recent RISC-V DT patchsets
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <8636krhubp.fsf@baylibre.com>
Date: Mon, 3 Jun 2019 15:17:46 -0500
Message-Id: <038A3CC1-B970-4B1B-83C1-59992F609888@sifive.com>
References: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
 <86o93mpqbx.fsf@baylibre.com>
 <20190528153542.jfkkwycyc3vu6hld@excalibur.cnev.de>
 <081611ea-a0d3-b0c9-3e08-8946513f2174@wdc.com> <86woi94lvs.fsf@baylibre.com>
 <BC002AAE-7EE6-404D-9204-D10263BEA5C9@sifive.com>
 <8636krhubp.fsf@baylibre.com>
To: Loys Ollivier <lollivier@baylibre.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_131750_477929_E4FD17D1 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Karsten Merker <merker@debian.org>, Atish Patra <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAzLCAyMDE5LCBhdCA0OjQ5IEFNLCBMb3lzIE9sbGl2aWVyIDxsb2xsaXZpZXJA
YmF5bGlicmUuY29tPiB3cm90ZToKPiAKPiBPbiBXZWQgMjkgTWF5IDIwMTkgYXQgMTI6MjUsIFRy
b3kgQmVuamVnZXJkZXMgPHRyb3kuYmVuamVnZXJkZXNAc2lmaXZlLmNvbT4gd3JvdGU6Cj4gCj4+
PiBPbiBNYXkgMjksIDIwMTksIGF0IDU6MDQgQU0sIExveXMgT2xsaXZpZXIgPGxvbGxpdmllckBi
YXlsaWJyZS5jb20+IHdyb3RlOgo+Pj4gCj4+PiBPbiBXZWQgMjkgTWF5IDIwMTkgYXQgMDA6NTAs
IEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3ZGMuY29tPiB3cm90ZToKPj4+IAo+Pj4+IE9uIDUv
MjgvMTkgODozNiBBTSwgS2Fyc3RlbiBNZXJrZXIgd3JvdGU6Cj4+Pj4+IE9uIFR1ZSwgTWF5IDI4
LCAyMDE5IGF0IDA1OjEwOjQyUE0gKzAyMDAsIExveXMgT2xsaXZpZXIgd3JvdGU6Cj4+Pj4+PiBP
biBUdWUgMjggTWF5IDIwMTkgYXQgMDE6MzIsIFBhdWwgV2FsbXNsZXkgPHBhdWwud2FsbXNsZXlA
c2lmaXZlLmNvbT4gd3JvdGU6Cj4+Pj4+PiAKPj4+Pj4+PiBBbiB1cGRhdGUgZm9yIHRob3NlIHRl
c3RpbmcgUklTQy1WIHBhdGNoZXM6IGhlcmUncyBhIG5ldyBicmFuY2ggb2YKPj4+Pj4+PiByaXNj
di1way9iYmwgdGhhdCBkb2Vzbid0IHRyeSB0byByZWFkIG9yIG1vZGlmeSB0aGUgRFQgZGF0YSBh
dCBhbGwsIHdoaWNoCj4+Pj4+Pj4gc2hvdWxkIGJlIHVzZWZ1bCB1bnRpbCBVLUJvb3Qgc2V0dGxl
cyBkb3duLgo+Pj4+PiBbLi4uXQo+Pj4+Pj4+IEhlcmUgaXMgYW4gTGludXgga2VybmVsIGJyYW5j
aCB3aXRoIHVwZGF0ZWQgRFQgZGF0YSB0aGF0IGNhbiBiZSBib290ZWQKPj4+Pj4+PiB3aXRoIHRo
ZSBhYm92ZSBib290bG9hZGVyOgo+Pj4+Pj4+IAo+Pj4+Pj4+ICAgaHR0cHM6Ly9naXRodWIuY29t
L3NpZml2ZS9yaXNjdi1saW51eC90cmVlL2Rldi9wYXVsdy9kdHMtdjUuMi1yYzEtZXhwZXJpbWVu
dGFsCj4+Pj4+Pj4gCj4+Pj4+Pj4gQSBzYW1wbGUgYm9vdCBsb2cgZm9sbG93cywgdXNpbmcgYSAn
ZGVmY29uZmlnJyBidWlsZCBmcm9tIHRoYXQgYnJhbmNoLgo+Pj4+Pj4gCj4+Pj4+PiBUaGFua3Mg
UGF1bCwgSSBjYW4gY29uZmlybSB0aGF0IGl0IHdvcmtzLgo+Pj4+Pj4gCj4+Pj4+PiBTb21ldGhp
bmcgaXMgc3RpbGwgdW5jbGVhciB0byBteXNlbGYuCj4+Pj4+PiBVc2luZyBGU0JMICsgcmlzY3Yt
cGsvYmJsIHRoZSBsaW51eCBrZXJuZWwgKyBkZXZpY2UgdHJlZSBib290cy4KPj4+Pj4+IE5laXRo
ZXIgRlNCTCBub3IgcmlzY3YtcGsvYmJsIGFyZSBtb2RpZnlpbmcgdGhlIERULgo+Pj4+Pj4gCj4+
Pj4+PiBVc2luZyBGU0JMICsgT3BlblNCSSArIFUtQm9vdCB0aGUgc2FtZSBrZXJuZWwgKyBkZXZp
Y2UgdHJlZSBoYW5ncyBvbgo+Pj4+Pj4gcnVubmluZyAvaW5pdC4KPj4+Pj4+IAo+Pj4+Pj4gV291
bGQgeW91IGhhdmUgYW55IHBvaW50ZXIgb24gd2hhdCByaXNjdi1wayBkb2VzIHRoYXQgT3BlblNC
SS9VLWJvb3QgZG9lc24ndCA/Cj4+Pj4+PiBPciBtYXliZSBpdCBpcyB0aGUgb3RoZXIgd2F5IGFy
b3VuZCAtIE9wZW5TQkkvVS1ib290IGRvZXMgc29tZXRoaW5nIHRoYXQKPj4+Pj4+IGV4dHJhIHRo
YXQgc2hvdWxkIG5vdCBoYXBwZW4uCj4+Pj4+IAo+Pj4+PiBIZWxsbywKPj4+Pj4gCj4+Pj4+IEkg
ZG9uJ3Qga25vdyB3aGljaCB2ZXJzaW9uIG9mIE9wZW5TQkkgeW91IGFyZSB1c2luZywgYnV0IHRo
ZXJlIGlzCj4+Pj4+IGEgcHJvYmxlbSB3aXRoIHRoZSBjb21iaW5hdGlvbiBvZiBrZXJuZWwgNS4y
LXJjMSBhbmQgT3BlblNCSQo+Pj4+PiB2ZXJzaW9ucyBiZWZvcmUgY29tbWl0Cj4+Pj4+IAo+Pj4+
PiAgaHR0cHM6Ly9naXRodWIuY29tL3Jpc2N2L29wZW5zYmkvY29tbWl0LzRlMmNkNDc4MjA4NTMx
YzQ3MzQzMjkwZjE1YjU3N2Q0MGM4MjY0OWMKPj4+Pj4gCj4+Pj4+IHRoYXQgY2FuIHJlc3VsdCBp
biBhIGhhbmcgb24gZXhlY3V0aW5nIGluaXQsIHNvIGluIGNhc2UgeW91Cj4+Pj4+IHNob3VsZCBi
ZSB1c2luZyBhbiBvbGRlciBPcGVuU0JJIGJ1aWxkIHRoYXQgbWlnaHQgYmUgdGhlIHNvdXJjZQo+
Pj4+PiBvZiB0aGUgcHJvYmxlbSB0aGF0IHlvdSBhcmUgZXhwZXJpZW5jaW5nLgo+Pj4+PiAKPj4+
Pj4gUmVnYXJkcywKPj4+Pj4gS2Fyc3Rlbgo+Pj4+PiAKPj4+PiAKPj4+PiBJIHZlcmlmaWVkIHRo
ZSB1cGRhdGVkIERUIHdpdGggdXBzdHJlYW0ga2VybmVsIGZvciB0aGUgYm9vdCBmbG93IE9wZW5T
QkkgCj4+Pj4gKyBVLUJvb3QgKyBMaW51eCBvciBPcGVuU0JJICsgTGludXguCj4+Pj4gCj4+Pj4g
T3BlblNCSSBzaG91bGQgYmUgY29tcGlsZWQgZm9yIHNpZml2ZSBwbGF0Zm9ybSB3aXRoIGZvbGxv
d2luZyBhZGRpdGlvbmFsIAo+Pj4+IGFyZ3VtZW50Cj4+Pj4gCj4+Pj4gRldfUEFZTE9BRF9GRFRf
UEFUSD08bGludXgga2VybmVsIAo+Pj4+IHNvdXJjZT4vYXJjaC9yaXNjdi9ib290L2R0cy9zaWZp
dmUvaGlmaXZlLXVubGVhc2hlZC1hMDAuZHRiCj4+Pj4gCj4+Pj4gRllJOiBJdCB3aWxsIG9ubHkg
d29yayB3aGVuIGtlcm5lbCBpcyBnaXZlbiBhIHBheWxvYWQgdG8gVS1Cb290L09wZW5TQkkgCj4+
Pj4gZGlyZWN0bHkuCj4+Pj4gCj4+PiAKPj4+IEh1bSwgSSBhbSBzdXJwcmlzZWQgYnkgdGhpcyBz
dGF0ZW1lbnQuCj4+PiBJIHdhcyBhYmxlIHRvIHZlcmlmeSB0aGUgbGF0ZXN0IERUIHBhdGNoIHNl
cmllIGZyb20gUGF1bCB3aXRoOgo+Pj4gT3BlblNCSSArIFUtQm9vdCArIExpbnV4ICYgRFQuCj4+
PiAKPj4+IEZvbGxvd2luZyB0aGUgT3BlblNCSSBkb2N1bWVudGF0aW9uIFswXSB3aXRoIFUtQm9v
dCBwYXlsb2FkOgo+Pj4gRldfUEFZTE9BRF9QQVRIPTx1LWJvb3RfYnVpbGRfZGlyPi91LWJvb3Qu
YmluCj4+PiAKPj4+IEkgZ2V0IGFuIFUtQm9vdCBwcm9tcHQgYW5kIHRoZW4gSSBjYW4ganVzdCBs
b2FkIHRoZSBsaW51eCBrZXJuZWwgYW5kCj4+PiBkZXZpY2UgdHJlZSBmcm9tIHRoZSBuZXR3b3Jr
Lgo+Pj4gCj4+PiBbMF06IGh0dHBzOi8vZ2l0aHViLmNvbS9yaXNjdi9vcGVuc2JpL2Jsb2IvbWFz
dGVyL2RvY3MvcGxhdGZvcm0vc2lmaXZlX2Z1NTQwLm1kI2J1aWxkaW5nLXNpZml2ZS1mdTU0MC1w
bGF0Zm9ybQo+Pj4gCj4+IAo+PiBDb3VsZCB5b3UgY29uZmlybSB3aGljaCBnaXQgaGFzaCBvZiBV
LWJvb3QgeW91IGFyZSBidWlsZGluZywgYW5kIHRoYXQgdGhlIC5jb25maWcgbWF0Y2hlcwo+PiB0
aGUgZGVmY29uZmlnIChvciBzZW5kIG1lIHRoZSAuY29uZmlnIHlvdSB1c2VkKT8KPiAKPiBTdXJl
LAo+IAo+IE9wZW5TQkk6IGE2Mzk1YWNkNmNiMmMzNTg3MTQ4MWQzZTRmMGJlYWY0NDlmOGMwZmQK
PiBVLUJvb3Q6IChvcmlnaW4vbWFzdGVyKSAzNDRhMGU0MzY3ZDA4MjBiOGViMmVhNGE5MDEzMjQz
M2UwMzgwOTVmCj4gS2VybmVsOiBmcm9tIFBhdWwgZnJvbSB0aGlzIHRocmVhZCBbMV0KPiAKPiBJ
IHVzZSB0aGUgc2lmaXZlX2Z1NTQwX2RlZmNvbmZpZyBvZiBVLUJvb3Qgd2l0aCBubyBhZGRpdGlv
bmFsIGNoYW5nZXMuCj4gCj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9zaWZpdmUvcmlzY3YtbGlu
dXgvdHJlZS9kZXYvcGF1bHcvZHRzLXY1LjItcmMxLWV4cGVyaW1lbnRhbAo+IAo+PiAKPj4gSeKA
mWQgbGlrZSB0byBnZXQgZXZlcnl0aGluZyB0aGF04oCZcyB3b3JraW5nIGludGVncmF0ZWQgaW4g
b25lIHBsYWNlIGludG8gYSBmcmVlZG9tLXUtc2RrIHRlc3QgYnJhbmNoLgo+PiAKPj4gCj4gCj4g
TGV0IG1lIGtub3cgdGhlIHRlc3QgYnJhbmNoIHdoZW4gaXQncyB1cCA6KQo+IAo+IExveXMKClBs
ZWFzZSB0YWtlIGEgbG9vayBhdCBodHRwczovL2dpdGh1Yi5jb20vdG1hZ2lrL2ZyZWVkb20tdS1z
ZGsvdHJlZS9mdW5jdGlvbmFsX3Rlc3QKCldoZW4gSSBib290ZWQgdGhlIG9yaWdpbmFsIDQuMTkg
dm1saW51eC5iaW4sIEkgZ290IHRoaXM6CgpCb290aW5nIGtlcm5lbCBpbgoyCjEKMAojIyBTdGFy
dGluZyBhcHBsaWNhdGlvbiBhdCAweDgwMjAwMDAwIC4uLgpbICAgIDAuMDAwMDAwXSBMaW51eCB2
ZXJzaW9uIDQuMTkuMC1zaWZpdmUtMSsgKHRyb3liQGVwc2lsb24wOSkgKGdjYyB2ZXJzaW9uIDgu
My4wIChCdWlsZHJvb3QgMjkKWyAgICAwLjAwMDAwMF0gYm9vdGNvbnNvbGUgW2Vhcmx5MF0gZW5h
YmxlZAoKV2l0aCB0aGUgNS4yIGtlcm5lbCwgSSBnZXQga25vdyBvdXRwdXQsIHdoaWNoIEkgYXNz
dW1lIGlzIGV4cGVjdGVkIGJlaGF2aW9yIHVzaW5nIHRoZQpjdXJyZW50IERUUyBwcm92aWRlZCBi
eSB0aGUgUy1tb2RlIFVib290LgoKQm9vdGluZyBrZXJuZWwgaW4KMgoxCjAKIyMgU3RhcnRpbmcg
YXBwbGljYXRpb24gYXQgMHg4MDIwMDAwMCAuLi4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yaXNjdgo=
