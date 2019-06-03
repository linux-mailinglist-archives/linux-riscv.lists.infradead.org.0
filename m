Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E081032D28
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 11:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ViMnDZfFCWTSCJfr6pSm+byYMI1QwjkWJ+7JO+gB3no=; b=ThxoURsT4LJnYy
	lAAZIcvDx2E5gIxCqd9A50rR4Ein+jrL9IICAFMJTAmg3ZFPimeaQ6k2Ahln/PgQPySgVgakhQlck
	mavScXNi6h9EkfYBbnBK+MfMsgOVGTPIeK9DoQMJOOJ1PXGS81CNzl3OsLZ+rvvC29jcPle8esR3+
	c8sgQ1uVHsASzN5n/HZBuwM6v2KPic7MfaWFr8Xr0GVeDUuLDPpvfwZG+IIvjQ/iJR9ZGEBVLfFS4
	DzmTBN4Cz472BhYHFMqePw3DFF6OsyWXWaVLcVpvloFLksuIS3Z43+AKauJclU7fRb5z3byyRCU6t
	0EKiwgFNABBNnPli0NKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjbI-0001Jc-Sd; Mon, 03 Jun 2019 09:49:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjbF-0001JJ-OS
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 09:49:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so3118652wms.2
 for <linux-riscv@lists.infradead.org>; Mon, 03 Jun 2019 02:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=j/q+dQU5QEVzcedEHboA/C4LUDOoFKTIbvHL7mdlN80=;
 b=F2OUPywVRqNGvuHhnmXmFNz96XnnIR9SzQdLvaoUpC+hJXZKKBDbW/4IgT5ZCgh9iD
 8Kl+SWzAIzwexVR+kmN4oCfCb/KJcyf8VTAud+xsybp1ryLa6dgLr30Lw06WPdmx2kRr
 KFFWcPsnoOeU7pdcETHQCqz8EHiWygmcNKnUH+o3T4cIJ2P+xpKxBsr4q3c3j4uJqRJ0
 hSsKiAMed2AD0BHIBtPz3mNeloQe4jQtaX1RQszRJmsDVs5s8cUYcRLw0TzvhKin5Nkf
 WXSvCPyXObf+fzjO7WYABkQS1r6hSmoJhKVHQbnyQUfZyLObBdtFhgkcICLSkqQ2WEKb
 ewzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=j/q+dQU5QEVzcedEHboA/C4LUDOoFKTIbvHL7mdlN80=;
 b=Bd+SlSXrZsueNUiujjF+3g02lDKAZjnJ5Ek02x1SAuqFgDEkypogF9BMvP4+V2O+75
 asL5Ej8U29tkwyo5DI7tsRcskhSTHaGCcDoJQUi4h8iXKk7TG0IobBsd/29p0LJcYQG6
 qfJ6q6jib4H8vQCTFB8A3+M5HhDjjXUWKHxVkfHVNDmrLCriGT3YbBW4lW8HE6QkwbwV
 ftPTUHav+y1nJsS7v+XwGMqC36AiHTT+HoM6fNTxqrLYgDDQNwM6GXt/lhizuCYnSraX
 Ywc/RymvbEJulw9DwymAt1bQ3gW8mJJF1iUszfknNx5yBrW3lIfMcXeiqlvZhwPjtRjz
 /Y4g==
X-Gm-Message-State: APjAAAWVJdtPCu8pdYzZ76Ul+fyfBzDXIXs5dKHIH8CybDUOOA0DCSPQ
 x7BgnKX6VBIJnJN1ymJSowuGAw==
X-Google-Smtp-Source: APXvYqx0nlNUyxoYcjdSsxVjDlhe3OlFKryML03LIbZbVjhBYixeKXQz314bNZQI+jebMoxCyyoV0Q==
X-Received: by 2002:a1c:9906:: with SMTP id b6mr1655219wme.117.1559555391959; 
 Mon, 03 Jun 2019 02:49:51 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y2sm25355651wra.58.2019.06.03.02.49.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 02:49:51 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
Subject: Re: Testing the recent RISC-V DT patchsets
In-Reply-To: <BC002AAE-7EE6-404D-9204-D10263BEA5C9@sifive.com>
References: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
 <86o93mpqbx.fsf@baylibre.com>
 <20190528153542.jfkkwycyc3vu6hld@excalibur.cnev.de>
 <081611ea-a0d3-b0c9-3e08-8946513f2174@wdc.com> <86woi94lvs.fsf@baylibre.com>
 <BC002AAE-7EE6-404D-9204-D10263BEA5C9@sifive.com>
Date: Mon, 03 Jun 2019 11:49:46 +0200
Message-ID: <8636krhubp.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_024953_799221_48A46989 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Karsten Merker <merker@debian.org>, Atish Patra <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkIDI5IE1heSAyMDE5IGF0IDEyOjI1LCBUcm95IEJlbmplZ2VyZGVzIDx0cm95LmJlbmpl
Z2VyZGVzQHNpZml2ZS5jb20+IHdyb3RlOgoKPj4gT24gTWF5IDI5LCAyMDE5LCBhdCA1OjA0IEFN
LCBMb3lzIE9sbGl2aWVyIDxsb2xsaXZpZXJAYmF5bGlicmUuY29tPiB3cm90ZToKPj4gCj4+IE9u
IFdlZCAyOSBNYXkgMjAxOSBhdCAwMDo1MCwgQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJhQHdkYy5j
b20+IHdyb3RlOgo+PiAKPj4+IE9uIDUvMjgvMTkgODozNiBBTSwgS2Fyc3RlbiBNZXJrZXIgd3Jv
dGU6Cj4+Pj4gT24gVHVlLCBNYXkgMjgsIDIwMTkgYXQgMDU6MTA6NDJQTSArMDIwMCwgTG95cyBP
bGxpdmllciB3cm90ZToKPj4+Pj4gT24gVHVlIDI4IE1heSAyMDE5IGF0IDAxOjMyLCBQYXVsIFdh
bG1zbGV5IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+IHdyb3RlOgo+Pj4+PiAKPj4+Pj4+IEFu
IHVwZGF0ZSBmb3IgdGhvc2UgdGVzdGluZyBSSVNDLVYgcGF0Y2hlczogaGVyZSdzIGEgbmV3IGJy
YW5jaCBvZgo+Pj4+Pj4gcmlzY3YtcGsvYmJsIHRoYXQgZG9lc24ndCB0cnkgdG8gcmVhZCBvciBt
b2RpZnkgdGhlIERUIGRhdGEgYXQgYWxsLCB3aGljaAo+Pj4+Pj4gc2hvdWxkIGJlIHVzZWZ1bCB1
bnRpbCBVLUJvb3Qgc2V0dGxlcyBkb3duLgo+Pj4+IFsuLi5dCj4+Pj4+PiBIZXJlIGlzIGFuIExp
bnV4IGtlcm5lbCBicmFuY2ggd2l0aCB1cGRhdGVkIERUIGRhdGEgdGhhdCBjYW4gYmUgYm9vdGVk
Cj4+Pj4+PiB3aXRoIHRoZSBhYm92ZSBib290bG9hZGVyOgo+Pj4+Pj4gCj4+Pj4+PiAgICBodHRw
czovL2dpdGh1Yi5jb20vc2lmaXZlL3Jpc2N2LWxpbnV4L3RyZWUvZGV2L3BhdWx3L2R0cy12NS4y
LXJjMS1leHBlcmltZW50YWwKPj4+Pj4+IAo+Pj4+Pj4gQSBzYW1wbGUgYm9vdCBsb2cgZm9sbG93
cywgdXNpbmcgYSAnZGVmY29uZmlnJyBidWlsZCBmcm9tIHRoYXQgYnJhbmNoLgo+Pj4+PiAKPj4+
Pj4gVGhhbmtzIFBhdWwsIEkgY2FuIGNvbmZpcm0gdGhhdCBpdCB3b3Jrcy4KPj4+Pj4gCj4+Pj4+
IFNvbWV0aGluZyBpcyBzdGlsbCB1bmNsZWFyIHRvIG15c2VsZi4KPj4+Pj4gVXNpbmcgRlNCTCAr
IHJpc2N2LXBrL2JibCB0aGUgbGludXgga2VybmVsICsgZGV2aWNlIHRyZWUgYm9vdHMuCj4+Pj4+
IE5laXRoZXIgRlNCTCBub3IgcmlzY3YtcGsvYmJsIGFyZSBtb2RpZnlpbmcgdGhlIERULgo+Pj4+
PiAKPj4+Pj4gVXNpbmcgRlNCTCArIE9wZW5TQkkgKyBVLUJvb3QgdGhlIHNhbWUga2VybmVsICsg
ZGV2aWNlIHRyZWUgaGFuZ3Mgb24KPj4+Pj4gcnVubmluZyAvaW5pdC4KPj4+Pj4gCj4+Pj4+IFdv
dWxkIHlvdSBoYXZlIGFueSBwb2ludGVyIG9uIHdoYXQgcmlzY3YtcGsgZG9lcyB0aGF0IE9wZW5T
QkkvVS1ib290IGRvZXNuJ3QgPwo+Pj4+PiBPciBtYXliZSBpdCBpcyB0aGUgb3RoZXIgd2F5IGFy
b3VuZCAtIE9wZW5TQkkvVS1ib290IGRvZXMgc29tZXRoaW5nIHRoYXQKPj4+Pj4gZXh0cmEgdGhh
dCBzaG91bGQgbm90IGhhcHBlbi4KPj4+PiAKPj4+PiBIZWxsbywKPj4+PiAKPj4+PiBJIGRvbid0
IGtub3cgd2hpY2ggdmVyc2lvbiBvZiBPcGVuU0JJIHlvdSBhcmUgdXNpbmcsIGJ1dCB0aGVyZSBp
cwo+Pj4+IGEgcHJvYmxlbSB3aXRoIHRoZSBjb21iaW5hdGlvbiBvZiBrZXJuZWwgNS4yLXJjMSBh
bmQgT3BlblNCSQo+Pj4+IHZlcnNpb25zIGJlZm9yZSBjb21taXQKPj4+PiAKPj4+PiAgIGh0dHBz
Oi8vZ2l0aHViLmNvbS9yaXNjdi9vcGVuc2JpL2NvbW1pdC80ZTJjZDQ3ODIwODUzMWM0NzM0MzI5
MGYxNWI1NzdkNDBjODI2NDljCj4+Pj4gCj4+Pj4gdGhhdCBjYW4gcmVzdWx0IGluIGEgaGFuZyBv
biBleGVjdXRpbmcgaW5pdCwgc28gaW4gY2FzZSB5b3UKPj4+PiBzaG91bGQgYmUgdXNpbmcgYW4g
b2xkZXIgT3BlblNCSSBidWlsZCB0aGF0IG1pZ2h0IGJlIHRoZSBzb3VyY2UKPj4+PiBvZiB0aGUg
cHJvYmxlbSB0aGF0IHlvdSBhcmUgZXhwZXJpZW5jaW5nLgo+Pj4+IAo+Pj4+IFJlZ2FyZHMsCj4+
Pj4gS2Fyc3Rlbgo+Pj4+IAo+Pj4gCj4+PiBJIHZlcmlmaWVkIHRoZSB1cGRhdGVkIERUIHdpdGgg
dXBzdHJlYW0ga2VybmVsIGZvciB0aGUgYm9vdCBmbG93IE9wZW5TQkkgCj4+PiArIFUtQm9vdCAr
IExpbnV4IG9yIE9wZW5TQkkgKyBMaW51eC4KPj4+IAo+Pj4gT3BlblNCSSBzaG91bGQgYmUgY29t
cGlsZWQgZm9yIHNpZml2ZSBwbGF0Zm9ybSB3aXRoIGZvbGxvd2luZyBhZGRpdGlvbmFsIAo+Pj4g
YXJndW1lbnQKPj4+IAo+Pj4gRldfUEFZTE9BRF9GRFRfUEFUSD08bGludXgga2VybmVsIAo+Pj4g
c291cmNlPi9hcmNoL3Jpc2N2L2Jvb3QvZHRzL3NpZml2ZS9oaWZpdmUtdW5sZWFzaGVkLWEwMC5k
dGIKPj4+IAo+Pj4gRllJOiBJdCB3aWxsIG9ubHkgd29yayB3aGVuIGtlcm5lbCBpcyBnaXZlbiBh
IHBheWxvYWQgdG8gVS1Cb290L09wZW5TQkkgCj4+PiBkaXJlY3RseS4KPj4+IAo+PiAKPj4gSHVt
LCBJIGFtIHN1cnByaXNlZCBieSB0aGlzIHN0YXRlbWVudC4KPj4gSSB3YXMgYWJsZSB0byB2ZXJp
ZnkgdGhlIGxhdGVzdCBEVCBwYXRjaCBzZXJpZSBmcm9tIFBhdWwgd2l0aDoKPj4gT3BlblNCSSAr
IFUtQm9vdCArIExpbnV4ICYgRFQuCj4+IAo+PiBGb2xsb3dpbmcgdGhlIE9wZW5TQkkgZG9jdW1l
bnRhdGlvbiBbMF0gd2l0aCBVLUJvb3QgcGF5bG9hZDoKPj4gRldfUEFZTE9BRF9QQVRIPTx1LWJv
b3RfYnVpbGRfZGlyPi91LWJvb3QuYmluCj4+IAo+PiBJIGdldCBhbiBVLUJvb3QgcHJvbXB0IGFu
ZCB0aGVuIEkgY2FuIGp1c3QgbG9hZCB0aGUgbGludXgga2VybmVsIGFuZAo+PiBkZXZpY2UgdHJl
ZSBmcm9tIHRoZSBuZXR3b3JrLgo+PiAKPj4gWzBdOiBodHRwczovL2dpdGh1Yi5jb20vcmlzY3Yv
b3BlbnNiaS9ibG9iL21hc3Rlci9kb2NzL3BsYXRmb3JtL3NpZml2ZV9mdTU0MC5tZCNidWlsZGlu
Zy1zaWZpdmUtZnU1NDAtcGxhdGZvcm0KPj4gCj4KPiBDb3VsZCB5b3UgY29uZmlybSB3aGljaCBn
aXQgaGFzaCBvZiBVLWJvb3QgeW91IGFyZSBidWlsZGluZywgYW5kIHRoYXQgdGhlIC5jb25maWcg
bWF0Y2hlcwo+IHRoZSBkZWZjb25maWcgKG9yIHNlbmQgbWUgdGhlIC5jb25maWcgeW91IHVzZWQp
PwoKU3VyZSwKCk9wZW5TQkk6IGE2Mzk1YWNkNmNiMmMzNTg3MTQ4MWQzZTRmMGJlYWY0NDlmOGMw
ZmQKVS1Cb290OiAob3JpZ2luL21hc3RlcikgMzQ0YTBlNDM2N2QwODIwYjhlYjJlYTRhOTAxMzI0
MzNlMDM4MDk1ZgpLZXJuZWw6IGZyb20gUGF1bCBmcm9tIHRoaXMgdGhyZWFkIFsxXQoKSSB1c2Ug
dGhlIHNpZml2ZV9mdTU0MF9kZWZjb25maWcgb2YgVS1Cb290IHdpdGggbm8gYWRkaXRpb25hbCBj
aGFuZ2VzLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9zaWZpdmUvcmlzY3YtbGludXgvdHJlZS9k
ZXYvcGF1bHcvZHRzLXY1LjItcmMxLWV4cGVyaW1lbnRhbAoKPgo+IEnigJlkIGxpa2UgdG8gZ2V0
IGV2ZXJ5dGhpbmcgdGhhdOKAmXMgd29ya2luZyBpbnRlZ3JhdGVkIGluIG9uZSBwbGFjZSBpbnRv
IGEgZnJlZWRvbS11LXNkayB0ZXN0IGJyYW5jaC4KPgo+CgpMZXQgbWUga25vdyB0aGUgdGVzdCBi
cmFuY2ggd2hlbiBpdCdzIHVwIDopCgpMb3lzCgo+Pj4gTmV0d29yayBib290aW5nIGlzIHN0aWxs
IG5vdCB3b3JraW5nIGFzIHRoZSBjbG9jayBkcml2ZXIgcHJvYmUgZG9lc24ndAo+Pj4gaGFwcGVu
IGJlY2F1c2Ugb2YgdGhlIHVwZGF0ZWQgRFQuCj4+PiAKPj4+IC0tIAo+Pj4gUmVnYXJkcywKPj4+
IEF0aXNoCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKPj4gbGludXgtcmlzY3ZAbGlzdHMuaW5m
cmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJpc2N2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJp
c2N2Cg==
