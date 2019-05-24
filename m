Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC87329BAF
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 18:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWm1RTKKLtIioA+EUlWGm5LQMAPBbAtJAxOJTds+An8=; b=lU2tv/P3GiJY2r
	wHCHNbZ6wTwISUih4lcYHOullW5ViG5j8s4H8JQUP9Bbe9H843j4QGPPWUWy23XC/4I6dDUEy0u11
	7bB00nF4p3nmgKJw7F0oaTfdQ82aMUcz4+3tK5Gp1OLHN9C4hoWLWVwetuKVn7Ima7rXN/QkvkSEw
	LH+iTCJQhwutpbmv3wXoE0Gl5GGulKMKS1yEVKzA3FM3hFE1s+3YZIKY5bRjrY4SCwzP816v01U5g
	eGJo/ruw+dCl7yk7onnn0l3azFELgMgxSonoKKymsDXfVrOljl9ZVXEXNSDxQoxMJtn11MI2ipmKJ
	pKm3wycaWfla99Ap6GwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCdc-0008Ho-6N; Fri, 24 May 2019 16:01:44 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCdX-0008HM-RD
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 16:01:41 +0000
Received: by mail-io1-xd41.google.com with SMTP id u2so8173961ioc.4
 for <linux-riscv@lists.infradead.org>; Fri, 24 May 2019 09:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=xL+kPgbfF/1PovTRo492cKLVwOi4L/EveqUpQTQravE=;
 b=csDzH0MCm7MIazEnSyrKle2Ng6PStDCGIVPB8D1izqHn/44CSXa28s30T7+B0rEG59
 iLDbYfdcljyranCxAk2dRaEQsWAeKCxPSqLzPXy5y4HOLmdsXEIUIDOhdjqbi4TP1253
 H0GgH0DJw47W/94O8RKlfQiAjNrNxw3wv1k5hxqMssBQ1AvEfG+OrUAbJ0QpHOxwvqJF
 AueZnQitPdT80xYfQbx8WZzosu12pJDv1ry1UAbuGGdEgvf8ukfj4sdtd7kqFtRki6cn
 wEwpQ/cmsCni5fgzuDbX6t/GF5A7FBCZcw3JZmXm3R3gg/o1WmJfLY930RbpyafFWzvd
 tGIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=xL+kPgbfF/1PovTRo492cKLVwOi4L/EveqUpQTQravE=;
 b=K9fhxKYGK6BNFXGfG9AvJs6oAz9kdgryakMmEJdmHf++fPW1EpTyRWIEj1hbY9fcEP
 /Lgiydo6R82gykxvG7/vKDx2oCF15c85euFQL6jZElCz1N+hKt0ehoo7eUimQUkO504j
 Q3+Tj64EYlDwQh9BROyyNrNAphyJRv1gNiQhhYjhfyO9rtcPbCoaKB5Qp/YR8J4Czev7
 SiyeDW+MxTSdfkxFdyGCPPVkxMN7JtjLLGfShdYIpo7DJl30J4QG7ct7Yri+ybXi7SAl
 1m/aPHhAXJl17Dk8CL4yu9add2M67V1hKz73MkQ3ybyJVXPIbyIHlAeKfNQc23FQsm9/
 9Brw==
X-Gm-Message-State: APjAAAXE6WS+oyiJhlYhX5YcvExTM3LdUqVo8kfMukWEG2Jm55Q17uaL
 d09qnQq173JGhL4hwpyxLVNFpw==
X-Google-Smtp-Source: APXvYqylR6PtNrnW/WNsWo3UQChHKUsiqnn0hVLiMMyhY6qyhzFPpxN+eUSIH+ePbEjbxp5+aO4NAA==
X-Received: by 2002:a5e:cb47:: with SMTP id h7mr56835447iok.69.1558713698147; 
 Fri, 24 May 2019 09:01:38 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id t191sm1426833itb.20.2019.05.24.09.01.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:01:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <b59c5bba240ef42f90ec26f8588a444391df02c2.camel@aisec.fraunhofer.de>
Date: Fri, 24 May 2019 11:01:36 -0500
Message-Id: <CC10BC34-0799-45D8-980F-804170CF818B@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
 <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
 <2818D3E3-3BDB-442B-822D-0FD221BCCA05@sifive.com>
 <b59c5bba240ef42f90ec26f8588a444391df02c2.camel@aisec.fraunhofer.de>
To: "Auer, Lukas" <lukas.auer@aisec.fraunhofer.de>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_090139_943047_41FB3B91 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "palmer@sifive.com" <palmer@sifive.com>,
 "bjorn.topel@gmail.com" <bjorn.topel@gmail.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>, Jim Jacobsen <jamez@wit.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Jeffery Carr <jcarr@wit.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyNCwgMjAxOSwgYXQgMTA6MzUgQU0sIEF1ZXIsIEx1a2FzIDxsdWthcy5hdWVy
QGFpc2VjLmZyYXVuaG9mZXIuZGU+IHdyb3RlOgo+IAo+IE9uIEZyaSwgMjAxOS0wNS0yNCBhdCAw
OTo0NiAtMDUwMCwgVHJveSBCZW5qZWdlcmRlcyB3cm90ZToKPj4+IE9uIE1heSAyMywgMjAxOSwg
YXQgMTA6NTkgUE0sIEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3ZGMuY29tPiB3cm90ZToKPj4+
IAo+Pj4gT24gNS8yMy8xOSA1OjIzIFBNLCBUcm95IEJlbmplZ2VyZGVzIHdyb3RlOgo+Pj4+PiBP
biBNYXkgMjIsIDIwMTksIGF0IDM6NDMgUE0sIFBhdWwgV2FsbXNsZXkgPHBhdWwud2FsbXNsZXlA
c2lmaXZlLmNvbT4gd3JvdGU6Cj4+Pj4+IAo+Pj4+PiArIEFudXAsIFRyb3kKPj4+Pj4gCj4+Pj4+
IE9uIFdlZCwgMjIgTWF5IDIwMTksIEF0aXNoIFBhdHJhIHdyb3RlOgo+Pj4+PiAKPj4+Pj4+IE9u
IDUvMjIvMTkgOTo0MiBBTSwgUGF1bCBXYWxtc2xleSB3cm90ZToKPj4+Pj4+PiBBbSBjaGVja2lu
ZyBvbiB0aGlzIG5vdyBhbmQgaG9wZSB0byBoYXZlIHNvbWUgY29uY2x1c2lvbiBvbiBpdCB0aGlz
IHdlZWsuCj4+Pj4+PiAKPj4+Pj4+IFRoYW5rcy4gQW55IGNoYW5jZSB5b3UgY2FuIHRha2UgYSBs
b29rIGF0IHRoZSBVLUJvb3QgY2xvY2sgZHJpdmVyIHRvIHBhdGNoIGl0Cj4+Pj4+PiBhcyBwZXIg
dGhlIERUIGNoYW5nZXMgPwo+Pj4+PiAKPj4+Pj4gSSBwcm9iYWJseSB3b24ndCBoYXZlIHRoZSBj
aGFuY2UgdG8gZ2V0IHRvIGl0IGZvciBhIHdoaWxlLiAgTG9va3MgbGlrZQo+Pj4+PiBBbnVwIHdh
cyB0aGUgb25lIHdobyBwb3N0ZWQgdGhlIGNsb2NrIGRyaXZlciB0byBVLUJvb3QgLSBjYW4gaGUg
dGFrZSBhCj4+Pj4+IGxvb2sgYXQgaXQ/Cj4+Pj4+IAo+Pj4+PiBXZSd2ZSBhbHNvIGFza2VkIFRy
b3kgdG8gbG9vayBhdCB1cHN0cmVhbSBVLWJvb3QgcmVsYXRlZCBpc3N1ZXMsIGJ1dAo+Pj4+PiBJ
J20gdW5zdXJlIHdoZW4gcGF0Y2hlcyB3aWxsIHN0YXJ0IGZsb3dpbmcgdXBzdHJlYW0uCj4+Pj4+
IAo+Pj4+PiAKPj4+Pj4gLSBQYXVsCj4+Pj4gSeKAmWQgcHJlZmVyIHRvIGhvbGQgb2ZmIG9uIGFu
eSBjaGFuZ2VzIHRvIFUtYm9vdCB1bnRpbCB3ZSBoYXZlIGEgbW9yZSBjb21wbGV0ZSBwYXRjaCBz
ZXQuIEdQSU8gYW5kIGV0aGVybmV0IGVudHJpZXMgYXJlIG1pc3NpbmcgZnJvbSB0aG9zZSBkZXZp
Y2UgdHJlZXMsIGFuZCB3ZSBoYXZlIGEgd29ya2luZyBVLWJvb3QgZGV2aWNlIHRyZWUgbm93LiBJ
ZiB0aGUga2VybmVsIG5lZWRzIHNvbWV0aGluZyBkaWZmZXJlbnQgd2UgY2FuIGxvYWQgdGhlIGRl
dmljZSB0cmVlIHRoZSBrZXJuZWwgbmVlZHMgZm9yIGF3aGlsZS4KPj4+IAo+Pj4gSSBkb24ndCB0
aGluayB0aGF0J3MgYSBnb29kIGlkZWEuIEl0IHdpbGwgdW5uZWNlc3NhcmlseSBibG9jayBldmVy
eWJvZHkncyBzZXR1cCB0aGF0IGlzIHN1cHBvc2VkIHRvIHdvcmsgd2l0aCBVLUJvb3QuIEkgcHJl
ZmVyIGlmIHdlIGNhbiBwYXRjaCBVLUJvb3QgYW5kIHVuYmxvY2sgZXZlcnlib2R5IHNvb25lciB0
aGFuIGxhdGVyLgo+Pj4gCj4+Pj4gVGhlIFUtYm9vdCBkZXZpY2UgdHJlZSBpcyBnb2luZyB0byBo
YXZlIHNvbWUgdGhpbmdzIGluIGl0IHRoZSBrZXJuZWwgZG9lc27igJl0IGNhcmUgYWJvdXQgYW55
d2F5LCBzbyB3ZeKAmXZlIGFscmVhZHkgZ290IGRpdmVyZ2VuY2UgYmV0d2VlbiB0aGUgdHdvLiBJ
ZGVhbGx5IHRoZSBVLWJvb3QgdmVyc2lvbiBpcyBhIHN1cGVyc2V0IG9mIHRoZSBrZXJuZWwgdmVy
c2lvbi4gV2UgYWxyZWFkeSBoYWQgb25lIGRpc3J1cHRpdmUgY2hhbmdlIHdpdGggdGhlIGNsb2Nr
IGRyaXZlciwgc28gd2hhdCBpcyB0byBwcmV2ZW50IHRoZXJlIHRvIGJlIG1vcmUgZGlzcnVwdGl2
ZSBjaGFuZ2VzIGluIHRoZSBldGhlcm5ldC9HUElPIGRldmljZSB0cmVlIGVudHJpZXMgdGhhdCBn
byBpbiB0aGUga2VybmVsIHVubGVzcyB3ZSBoYXZlIGEgZHJhZnQgb2Ygd2hhdCB0aG9zZSBlbnRy
aWVzIHNob3VsZCBsb29rIGxpa2UgdGhhdCBpcyBhY2NlcHRhYmxlPwo+Pj4gSUlSQywgY3VycmVu
dCBVLUJvb3QgUyBtb2RlIHBvcnQgZG9lc24ndCBuZWVkIGEgR1BJTyBkcml2ZXIgYW5kIGV0aGVy
bmV0IGRyaXZlciBpcyBwcm92aWRlZCBieSB0aGUgY29tbW9uIG1hY2IgZHJpdmVyLiBJZiB0aGVy
ZSBhcmUgYW55IERUIGNoYW5nZXMgc3VnZ2VzdGVkIGJ5IGtlcm5lbCwgd2UgY2FuIGFsd2F5cyBw
YXRjaCBVLUJvb3QuCj4+IAo+PiBUaGUgTS1tb2RlIHBvcnQgd2lsbCBuZWVkIGEgR1BJTyBkcml2
ZXIsIGFzIHRoZSBtYWNiIGRyaXZlciBuZWVkcyBwcm9wZXIgYSBwcm9wZXIgR1BJTyBkcml2ZXIg
dG8gcmVzZXQgdGhlIHBoeS4KPj4gCj4+IEkgaGF2ZSBubyBpc3N1ZXMgdXBkYXRpbmcgdGhlIFBS
Q0kgZHJpdmVyIERUIGZvcm1hdCBpZiB3ZSBhbHNvIGhhdmUgdGhlIHJlc3Qgb2YgdGhlIERUIGVu
dHJpZXMgbmVlZGVkIHRvIGJvb3QgYSB3b3JraW5nIHN5c3RlbSwgSSBqdXN0IGhhdmUgbm90IHNl
ZW4gYW4gZXhhbXBsZSBvZiB0aGF0IG90aGVyIHRoYW4gd2hhdCBJIGhhdmUgYXQgaHR0cHM6Ly9n
aXRodWIuY29tL3NpZml2ZS9IaUZpdmVfVS1Cb290L2Jsb2IvcmVncmVzc2lvbi9hcmNoL3Jpc2N2
L2R0cy9oaWZpdmVfdTU0MC5kdHMKPiAKPiBNeSBwbGFuIHdhcyB0byBhZGQgdGhlIFNpRml2ZSBI
aUZpdmUgVW5sZWFzaGVkIGRldmljZSB0cmVlIHRvIFUtQm9vdCwKPiBvbmNlIHRoZSByZWxldmFu
dCBrZXJuZWwgcGF0Y2hlcyB3aXRoIHRoZSBkZXZpY2UgdHJlZSBnZXQgbWVyZ2VkLiBJCj4gd291
bGQga2VlcCBib3RoIGlkZW50aWNhbCB0byBtYWtlIGl0IGVhc2llciB0byBzeW5jIGNoYW5nZXMg
ZnJvbSB0aGUKPiBrZXJuZWwgd2l0aCBVLUJvb3QuCj4gCj4gVGhhbmtzLAo+IEx1a2FzCgpXZSBu
ZWVkIHRvIHN1cHBvcnQgVWJvb3QgaW4gTS1tb2RlIGFzIHRoZSBmaXJzdC1zdGFnZSBib290bG9h
ZGVyLCBhbmQgdGhpcyB3aWxsIHJlcXVpcmUgRERSIGluaXQgY29kZS4gVGhlIGJlc3Qgd2F5IHRv
IGRvIHRoYXQgc2VlbXMgdG8gYmUgZm9sbG93IHRoZSBleGFtcGxlIHRoYXQgd2FzIHVzZWQgZm9y
IGEgUm9ja2NoaXAgcGFydCB3aXRoIGEgc2ltaWxpYXIgRERSIGNvbnRyb2xsZXIgSVAuIFRoZSBE
RFIgaW5pdCBjb2RlIHVzZXMgYm9hcmQtc3BlY2lmaWMgZGF0YSBmcm9tIHRoZSBkZXZpY2UgdHJl
ZSB0byBwcm9ncmFtIHRoZSBjb250cm9sbGVyLCBzbyB0aGUgTS1tb2RlIFVib290IHdpbGwgbmVl
ZCB0byBoYXZlIGVudHJpZXMgdGhlIGtlcm5lbCBkb2VzbuKAmXQgY2FyZSBhYm91dC4KCklmIHdl
IGFyZSBnb2luZyB0byBrZWVwIGJvdGggVS1ib290IGFuZCBLZXJuZWwgZGV2aWNlIHRyZWVzIGlk
ZW50aWNhbCB0aGVuIHdlIG5lZWQgc29tZSBidXktaW4gYW5kIGFncmVlbWVudCBmcm9tIGtlcm5l
bCBkZXZlbG9wZXJzIG9uIGhvdyB0aGF0IGRhdGEgZ29lcyBpbiB0aGUga2VybmVsLgoKSXQgc2Vl
bXMgYSBsb3QgZWFzaWVyIGlmIHdlIHVzZSBpbmNsdWRlIGZpbGVzIGFuZCB0aGUgVS1ib290IGRl
dmljZSB0cmVlIGhhcyBhIGZldyBleHRyYSBpbmNsdWRlcyBmb3IgRERSIGluaXQgYW5kIG90aGVy
IHRoaW5ncyB0aGF0IGFyZSBub3QgcmVsZXZhbnQgdG8gdGhlIGtlcm5lbC4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBs
aXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
