Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504C37A8EF
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 14:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnHcO9wCBOszfrcIjU/pOoCz3eKtoFGpZDOcCNxmNaU=; b=bk2sbHD+TKP7Jg
	4uWctElXHNvDLq4B6DuKSgnZ7NMC/9sif8lLa1vXuax0vE5voeI9YR9LZpfSyp/htDZ+dT9VMdMmh
	8jpHqkPWfT0mxTosMXNZuDbPEUwiCwo31nqri+5xdMp5atgX+KHF8eM8R1Z8hAeCa5JX4m4iC6SAN
	0i87M3hcgoiUOaoWk/C/Zv0MvZIPZnsaL/liIQ2yUNQSzK/4aFC86hkQvbSHpw8kIL5c9+XdtP2ff
	nKioUkYZVHfjhjVN+Pzhbr5pcw/ljsPVcMboQLtzHZ0+Wa+LfBtJQj26sFnaeQs+oXzJjQygZ8Lc/
	BF3ju+jyJIg/qaate0QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRVt-0004Ca-3X; Tue, 30 Jul 2019 12:45:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRVp-0004C3-Aj
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 12:45:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so12470160wrt.6
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 05:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RxcCDptzhf2JngnNPfXMmsFQ4XuPBvrGdXRbVQ3//PI=;
 b=1ZC2F6/8g52VaUbVzsOiZw5xPjKgJwr5zNUTtN96CD6DbvZFDr7cSjfbXzEg0AFP0e
 2UDH9sUy8IsP59Q41Nj+nVNJMdBB6FSaBdDqqg2990jYyc+pukJ505qgxLP5poXbEhyz
 8dqDWigT5wZCzjKummkVCgaZq4LJgAFqUt+Q0FScU51WwqyMBve7jmKsLf1naBis9kDR
 U/mjpXH3a+Tl3x4YEahxohAMetsxcNHk4atFJ21BpbYIe/4I0d4b/CMTc9Qo/Bq8qnpE
 a6YxeE8tPHfoZbywzyxwnCKi58cnnzgK2HGHCwecO33HmYM8gOQLpuBOr4NGpP+onit2
 bgHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RxcCDptzhf2JngnNPfXMmsFQ4XuPBvrGdXRbVQ3//PI=;
 b=Wgs83XA1DwcUr1JIjGhAl3fU7gb3SkzWegIMY1zoks7dz6VbE9okzqbS+cl4/l0RyJ
 LdknBQwiPrj7GWuyX2nDUesWMKhOwBmQq3BRm2DMx5z4tnG5wAx+1AZU3JYDgEB9cLxG
 gFNfL1Nv3i+ZbCqiutN6MHu9KTZf5tt/JbwggxUDtCO19UadUF0dK80wPWlqJLk0FH9q
 MADEwVYvPy2s2DzUW4V1j9fFzPolhWQ6OtzH7Pg8BHpjC4K8+QgSNTLsV5vA1gxeiF56
 HiVSDZsAc0ZJ2Z5tzLuxbU0ixYh0mHnyHNu9ibB4J73UNQCaofz17Q2zFvzMXvpQBsJK
 VAiA==
X-Gm-Message-State: APjAAAX/GyHVL871ji4PzTgaHDsUZzOaokPS0NLYntaysUYXmUrDEgK0
 6kv0q9yvEUAZQApDJYUhdcxQ9OcOJxz+qSxw2qA=
X-Google-Smtp-Source: APXvYqxhFio+jJckSpCHx6uaZasX7OyuUoCma8briJuapuFxFWY/Gd79+y6i+J/AomdEMHJzOE7q0DLhsGyObTJtdwQ=
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr50556066wrw.323.1564490751761; 
 Tue, 30 Jul 2019 05:45:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-6-anup.patel@wdc.com>
 <9f9d09e5-49bc-f8e3-cfe1-bd5221e3b683@redhat.com>
 <CAAhSdy3JZVEEnPnssALaxvCsyznF=rt=7-d5J_OgQEJv6cPhxQ@mail.gmail.com>
 <66c4e468-7a69-31e7-778b-228908f0e737@redhat.com>
In-Reply-To: <66c4e468-7a69-31e7-778b-228908f0e737@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 18:15:39 +0530
Message-ID: <CAAhSdy3b-o6y1fsYi1iQcCN=9ZuC98TLCqjHCYAzOCx+N+_89w@mail.gmail.com>
Subject: Re: [RFC PATCH 05/16] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_054553_375160_F23FEB56 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgNTo0MiBQTSBQYW9sbyBCb256aW5pIDxwYm9uemluaUBy
ZWRoYXQuY29tPiB3cm90ZToKPgo+IE9uIDMwLzA3LzE5IDE0OjAwLCBBbnVwIFBhdGVsIHdyb3Rl
Ogo+ID4gT24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgNDo0NyBQTSBQYW9sbyBCb256aW5pIDxwYm9u
emluaUByZWRoYXQuY29tPiB3cm90ZToKPiA+Pgo+ID4+IEZpcnN0LCBzb21ldGhpbmcgdGhhdCBp
cyBub3QgY2xlYXIgdG8gbWU6IGhvdyBkbyB5b3UgZGVhbCB3aXRoIGEgZ3Vlc3QKPiA+PiB3cml0
aW5nIDEgdG8gVlNJUC5TU0lQPyAgSSB0aGluayB0aGF0IGNvdWxkIGxlYWQgdG8gbG9zdCBpbnRl
cnJ1cHRzIGlmCj4gPj4geW91IGhhdmUgdGhlIGZvbGxvd2luZyBzZXF1ZW5jZQo+ID4+Cj4gPj4g
MSkgZ3Vlc3Qgd3JpdGVzIDEgdG8gVlNJUC5TU0lQCj4gPj4KPiA+PiAyKSBndWVzdCBsZWF2ZXMg
VlMtbW9kZQo+ID4+Cj4gPj4gMykgaG9zdCBzeW5jcyBWU0lQCj4gPj4KPiA+PiA0KSB1c2VyIG1v
ZGUgdHJpZ2dlcnMgaW50ZXJydXB0Cj4gPj4KPiA+PiA1KSBob3N0IHJlZW50ZXJzIGd1ZXN0Cj4g
Pj4KPiA+PiA2KSBob3N0IG1vdmVzIGlycXNfcGVuZGluZyB0byBWU0lQIGFuZCBjbGVhcnMgVlNJ
UC5TU0lQIGluIHRoZSBwcm9jZXNzCj4gPgo+ID4gVGhpcyByZWFzb25pbmcgYWxzbyBhcHBseSB0
byBNLW1vZGUgZmlybXdhcmUgKE9wZW5TQkkpIHByb3ZpZGluZyB0aW1lcgo+ID4gYW5kIElQSSBz
ZXJ2aWNlcyB0byBIUy1tb2RlIHNvZnR3YXJlLiBXZSBoYWQgc29tZSBkaXNjdXNzaW9uIGFyb3Vu
ZAo+ID4gaXQgaW4gYSBkaWZmZXJlbnQgY29udGV4dC4KPiA+IChSZWZlciwgaHR0cHM6Ly9naXRo
dWIuY29tL3Jpc2N2L29wZW5zYmkvaXNzdWVzLzEyOCkKPiA+Cj4gPiBUaGUgdGhpbmcgaXMgU0lQ
IENTUiBpcyBzdXBwb3NlZCB0byBiZSByZWFkLW9ubHkgZm9yIGFueSBTLW1vZGUgU1cuIFRoaXMK
PiA+IG1lYW5zIEhTLW1vZGUvVlMtbW9kZSBTVyBtb2RpZmljYXRpb25zIHRvIFNJUCBDU1Igc2hv
dWxkIGhhdmUgbm8KPiA+IGVmZmVjdC4KPgo+IElzIGl0PyAgVGhlIHByaXZpbGVnZWQgc3BlY2lm
aWNhdGlvbiBzYXlzCj4KPiAgIEludGVycHJvY2Vzc29yIGludGVycnVwdHMgYXJlIHNlbnQgdG8g
b3RoZXIgaGFydHMgYnkgaW1wbGVtZW50YXRpb24tCj4gICBzcGVjaWZpYyBtZWFucywgd2hpY2gg
d2lsbCB1bHRpbWF0ZWx5IGNhdXNlIHRoZSBTU0lQIGJpdCB0byBiZSBzZXQgaW4KPiAgIHRoZSBy
ZWNpcGllbnQgaGFydOKAmXMgc2lwIHJlZ2lzdGVyLgoKVG8gZnVydGhlciBleHBsYWluIG15IHJh
dGlvbmFsZSAuLi4KCkhlcmUncyBzb21lIHRleHQgZnJvbSBSSVNDLVYgc3BlYyByZWdhcmRpbmcg
TUlQIENTUjoKIlRoZSBtaXAgcmVnaXN0ZXIgaXMgYW4gTVhMRU4tYml0IHJlYWQvd3JpdGUgcmVn
aXN0ZXIgY29udGFpbmluZyBpbmZvcm1hdGlvbgpvbiBwZW5kaW5nIGludGVycnVwdHMsIHdoaWxl
IG1pZSBpcyB0aGUgY29ycmVzcG9uZGluZyBNWExFTi1iaXQgcmVhZC93cml0ZQpyZWdpc3RlciBj
b250YWluaW5nIGludGVycnVwdCBlbmFibGUgYml0cy4gT25seSB0aGUgYml0cyBjb3JyZXNwb25k
aW5nIHRvCmxvd2VyLXByaXZpbGVnZSBzb2Z0d2FyZSBpbnRlcnJ1cHRzIChVU0lQLCBTU0lQKSwg
dGltZXIgaW50ZXJydXB0cyAoVVRJUCwgU1RJUCksCmFuZCBleHRlcm5hbCBpbnRlcnJ1cHRzIChV
RUlQLCBTRUlQKSBpbiBtaXAgYXJlIHdyaXRhYmxlIHRocm91Z2ggdGhpcyBDU1IKYWRkcmVzczsg
dGhlIHJlbWFpbmluZyBiaXRzIGFyZSByZWFkLW9ubHkuIgoKSGVyZSdzIHNvbWUgdGV4dCBmcm9t
IFJJU0MtViBzcGVjIHJlZ2FyZGluZyBTSVAgQ1NSOgoic29mdHdhcmUgaW50ZXJydXB0LXBlbmRp
bmcgKFNTSVApIGJpdCBpbiB0aGUgc2lwIHJlZ2lzdGVyLiBBIHBlbmRpbmcKc3VwZXJ2aXNvci1s
ZXZlbCBzb2Z0d2FyZSBpbnRlcnJ1cHQgY2FuIGJlIGNsZWFyZWQgYnkgd3JpdGluZyAwIHRvIHRo
ZSBTU0lQIGJpdAppbiBzaXAuIFN1cGVydmlzb3ItbGV2ZWwgc29mdHdhcmUgaW50ZXJydXB0cyBh
cmUgZGlzYWJsZWQgd2hlbiB0aGUgU1NJRSBiaXQgaW4KdGhlIHNpZSByZWdpc3RlciBpcyBjbGVh
ci4iCgpXaXRob3V0IFJJU0MtViBoeXBlcnZpc29yIGV4dGVuc2lvbiwgdGhlIFNJUCBpcyBlc3Nl
bnRpYWxseSBhIHJlc3RyaWN0ZWQKdmlldyBvZiBNSVAgQ1NSLiBBbHNvIGFzLXBlciBhYm92ZSwg
Uy1tb2RlIFNXIGNhbiBvbmx5IHdyaXRlIDAgdG8gU1NJUApiaXQgaW4gU0lQIENTUiB3aGVyZWFz
IGl0IGNhbiBvbmx5IGJlIHNldCBieSBNLW1vZGUgU1cgb3Igc29tZSBIVwptZWNoYW5pc20gKHN1
Y2ggYXMgUy1tb2RlIENMSU5UKS4KClRoZXJlIHdhcyBxdWl0ZSBhIGJpdCBvZiBkaXNjdXNzaW9u
IGluIGxhc3QgUklTQy1WIFp1cmljaCBXb3Jrc2hvcCBhYm91dAphdm9pZGluZyBTQkkgY2FsbHMg
Zm9yIGluamVjdGluZyBJUElzLiBUaGUgYmVzdCBzdWdnZXN0aW9uIHNvIGZhciBpcyB0bwpldmVu
dHVhbGx5IGhhdmUgUklTQy1WIHN5c3RlbXMgd2l0aCBzZXBhcmF0ZSBDTElOVCBIVyBmb3IgTS1t
b2RlCmFuZCBTLW1vZGUuIFRoZSBTLW1vZGUgU1cgY2FuIHVzZSBTLW1vZGUgQ0xJTlQgdG8gdHJp
Z2dlciBJUElzIHRvCm90aGVyIENQVXMgYW5kIGl0IHdpbGwgdXNlIFNCSSBjYWxscyBmb3IgSVBJ
cyBvbmx5IHdoZW4gUy1tb2RlIENMSU5UIGlzCm5vdCBhdmFpbGFibGUuCgo+Cj4gICBBbGwgYml0
cyBiZXNpZGVzIFNTSVAgaW4gdGhlIHNpcCByZWdpc3RlciBhcmUgcmVhZC1vbmx5Lgo+Cj4gTWVh
bmluZyB0aGF0IHNlbmRpbmcgYW4gSVBJIHRvIHNlbGYgYnkgd3JpdGluZyAxIHRvIHNpcC5TU0lQ
IGlzCj4gd2VsbC1kZWZpbmVkLiAgVGhlIHNhbWUgc2hvdWxkIGJlIHRydWUgb2YgdnNpcC5TU0lQ
IHdoaWxlIGluIFZTIG1vZGUuCj4KPiA+IERvIHlvdSBzdGlsbCBhbiBpc3N1ZSBoZXJlPwo+Cj4g
RG8geW91IHNlZSBhbnkgaXNzdWVzIGluIHRoZSBwc2V1ZG9jb2RlIEkgc2VudD8gIEl0IGdldHMg
YXdheSB3aXRoIHRoZQo+IHNwaW5sb2NrIGFuZCByZXF1ZXN0IHNvIGl0IG1heSBiZSBhIGdvb2Qg
aWRlYSBhbnl3YXkuIDopCgpZZXMsIEkgYW0gZXZhbHVhdGluZyB5b3VyIHBzZWRvY29kZSByaWdo
dCBub3cuIEkgZGVmaW5pdGVseSB3YW50IHRvCnJlbW92ZSB0aGUgaXJxX3BlbmRpbmdfbG9jayBp
ZiBwb3NzaWJsZS4gSSB3aWxsIHRyeSB0byBpbi1jb3Jwb3JhdGUgeW91cgpzdWdnZXN0aW9uIGlu
IHYyIHNlcmllcy4KClJlZ2FyZHMsCkFudXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcmlzY3YK
