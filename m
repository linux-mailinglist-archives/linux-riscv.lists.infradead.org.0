Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661722B93D
	for <lists+linux-riscv@lfdr.de>; Mon, 27 May 2019 18:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+6NWnYKz068KxmhXGrxQYMiBOjGX1/0gOQ3GefpjX8=; b=Hee2/HoK+UVcd1
	LT1KwamhyoFfuFXFrNajT7CUz9KWTERKRa+BCq6G7hcngRtnw5RtbA2P/OtKiVfD9F1cv4K9I6WEC
	iJKoMKt7lrDK3hsEMgeSS1KtPG2kAIcqMMPXYs5euxJfyLP1j4l8ISpO1VQWMpFURyYa+1RZZOltw
	fkaQ/5oUNuvGF8tjnIsXO68wDYFdcbadok0exXgrdD/iAgR67dkWtV3XQxhn/zKrWS+DRh3NLU/i/
	hbeVeVjJu9ds8O090Ozy2eLpKpvFjPM/1HrINlEkQtCLr5uggeRgRD09Iu6gW8EwLU81Ceq04UOb3
	BvPF+ty8GCjp4jdmgpmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIqu-0007HR-Sm; Mon, 27 May 2019 16:52:00 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIqr-0007H0-Kn
 for linux-riscv@lists.infradead.org; Mon, 27 May 2019 16:51:59 +0000
Received: by mail-io1-xd44.google.com with SMTP id u13so4976775iop.0
 for <linux-riscv@lists.infradead.org>; Mon, 27 May 2019 09:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A0j4Lj9k4yUxsOyuSL3CJCbveCxlbBOnFdns0aQv/bs=;
 b=GpL0eahGZ5Xjb4rz7du0V0sN4rtWwg9HZ2Dq0ZNk13QYMj5pzhD1DbGvA3hAQc7uxR
 G86StLmrcI8Bz91dMCwMkhUuzoIeq5NL4YNFMNc9Hucqo99m7n4gShp2mdKLqjnAZNoa
 NmIlrIRionHsXHszCdzXg8brDUtARWumLoF2zaYkBUXYNICad/w/hEQpBoeX3knJUXTz
 Bp2NYsQzCRwQiJfLdih220L+Auiyhfo/vtf3YL3LIMBf1fFZPewFtB/jXb3PM9lS91oL
 BbBKn9N9lcMX2NWuA+5HGgQLcRdlq/9W6qWvgOzkvqlOPLPSps6bcRliOW6bwUH80sU0
 gAvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A0j4Lj9k4yUxsOyuSL3CJCbveCxlbBOnFdns0aQv/bs=;
 b=n/MfI4Szy0uV1i+5Z6yckYW3teeMMbQJGqIJhybTVKGAicsQl3yypFwPmI1ySq9scX
 EnVdd5AUXwbKjcdQdSNwSPizI9/gOOzGBGYHxorLch6sbPVYUAcnS5+8Aqehs8UcoDj0
 EmBkovlbCRd/agdk+yDX0+G1b+WWbxJVJBm6nRkmD4gRWVw/IvohIaAYs0bhuPFUJF/0
 Tx/SsHcJse54HLuIE+2+30tfG1IQ04sfUFdHtaOFu6g7nwZynMnUlqCyXw/L+nZGYTIw
 Dqlz3pFDsNcGJGq2Lp0MsVxma5b3Hpcn4KGdC9VrUAU6NVzuxldPzUWGcQLI/idydxQf
 N9wg==
X-Gm-Message-State: APjAAAUVbULWAzARCTO7I0Y6v6pKlNj1OpCGG29LnKl0fhKgU5awOFmg
 XxWeWrLAqONMqS9gMKwPOQfDtg==
X-Google-Smtp-Source: APXvYqzNBsApelwZ+uqlzA2FI4wTZ3z/e2QTMop6qxHmiyY/13M5c+YXD+uZTquKRSgW3ZBRF2FIvw==
X-Received: by 2002:a6b:f719:: with SMTP id k25mr520692iog.129.1558975915660; 
 Mon, 27 May 2019 09:51:55 -0700 (PDT)
Received: from [192.168.62.194] (71-34-182-131.desm.qwest.net. [71.34.182.131])
 by smtp.gmail.com with ESMTPSA id 74sm19544itk.3.2019.05.27.09.51.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 09:51:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <mvmh89gdr4y.fsf@suse.de>
Date: Mon, 27 May 2019 11:51:53 -0500
Message-Id: <FD4D0F7A-2005-4CE1-BF18-2C20C83EAD82@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
 <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
 <2818D3E3-3BDB-442B-822D-0FD221BCCA05@sifive.com>
 <alpine.DEB.2.21.9999.1905251058100.15661@viisi.sifive.com>
 <AC197BDD-8A15-421E-9F99-ADFE50360982@sifive.com> <mvmh89gdr4y.fsf@suse.de>
To: Andreas Schwab <schwab@suse.de>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_095157_745817_8079BF63 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <atish.patra@wdc.com>,
 Yash Shah <yash.shah@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyNywgMjAxOSwgYXQgNzoyMSBBTSwgQW5kcmVhcyBTY2h3YWIgPHNjaHdhYkBz
dXNlLmRlPiB3cm90ZToKPiAKPiBPbiBNYWkgMjUgMjAxOSwgVHJveSBCZW5qZWdlcmRlcyA8dHJv
eS5iZW5qZWdlcmRlc0BzaWZpdmUuY29tPiB3cm90ZToKPiAKPj4gU28gdGhpcyB3b3VsZCBiZSB0
aGUgdGltZSB0byBhZ3JlZSBvbiB3aGF0IHRoZSBnZW1neGwvZXRoZXJuZXQgZW50cmllcyAKPj4g
c2hvdWxkIGxvb2sgbGlrZSwgYW5kIGFsbCBvZiB0aGlzIGNhbiBnZXQgdW5ibG9ja2VkLiBXaGF0
IEkgaGF2ZSBub3cgdGhhdAo+PiBJIGtub3cgd29ya3MgKHdpdGggdGhlIGxlZ2FjeSB1LWJvb3Qp
IGlzIHRoaXM6Cj4+IAo+PiAgICAgICAgICAgICAgICBMNTE6IGNhZGVuY2UtZ2VtZ3hsLW1nbXRA
MTAwYTAwMDAgewo+PiAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic2lmaXZl
LGNhZGVuY2VnZW1neGxtZ210MCI7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4
MCAweDEwMGEwMDAwIDB4MCAweDEwMDA+Owo+PiAgICAgICAgICAgICAgICAgICAgICAgIHJlZy1u
YW1lcyA9ICJjb250cm9sIjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAjY2xvY2stY2VsbHMg
PSA8MD47Cj4+ICAgICAgICAgICAgICAgIH07Cj4+ICAgICAgICAgICAgICAgIEw1MjogZXRoZXJu
ZXRAMTAwOTAwMDAgewo+PiAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiY2Ru
cyxtYWNiIjsKPj4gICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZM
ND47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDw1Mz47Cj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweDEwMDkwMDAwIDB4MCAweDIwMDA+Owo+PiAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJjb250cm9sIjsKPj4gCj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgbG9jYWwtbWFjLWFkZHJlc3MgPSBbMDAgMDAgMDAgMDAgMDAgMDBd
Owo+PiAgICAgICAgICAgICAgICAgICAgICAgIHBoeS1tb2RlID0gImdtaWkiOwo+PiAgICAgICAg
ICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gInBjbGsiLCAiaGNsayIsICJ0eF9jbGsiOwo+
PiAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmcHJjaSAxPiwgPCZwcmNpIDE+LCA8
Jkw1MT47Cj4gCj4gVGhhdCBjYW4ndCBiZSByaWdodCwgPCZwcmNpIDE+IGlzIENMS19ERFJQTEwu
Cj4gCj4gQW5kcmVhcy4KPiAKCk9rYXkgdGhhdCBpcyBkZWZpbml0ZWx5IHdyb25nIHRoZW4gKGZv
ciB0aGUgbmV3IFBSQ0kgY29kZSkKCkkgaGF2ZSBhIFdJUCBjb21taXQgb2YgdGhlIG5ldyBEVFMg
Zm9ybWF0KHMpIGluIHRoZSBsZWdhY3kgVS1ib290IHRyZWUsCmluIHdoaWNoIGV2ZXJ5dGhpbmcg
YXBwZWFycyB0byB3b3JrLCBhbmQgc2hvdWxkIGF0IGxlYXN0IGJlIHN1ZmZpY2llbnQKZm9yIHRl
bXBvcmFyeSB1c2UgdG8gZWFzZSBkZXZlbG9wbWVudCBvZiBvdGhlciBjb21wb25lbnRzIChTQkks
IFMtbW9kZQpVYm9vdCwga2VybmVsKSwgZXRjLgoKVGhlIHBhdGNoIGZvciB0aGUgRFRTIGNoYW5n
ZXMgaXMgYXQKaHR0cHM6Ly9naXRodWIuY29tL3RtYWdpay9IaUZpdmVfVS1Cb290L2NvbW1pdC8z
MmIwMGU3NGU5MDhkYzcyZTg1ZjJmNjYzMWMzMzJhZDNkYTYxOWEwCgpJ4oCZdmUgdHJpZWQgYm90
aCBiYWNrcG9ydGluZyB0aGUgUFJDSSBkcml2ZXIgdG8gbGludXggNC4xOSwgYXMgd2VsbCBhcyBQ
YXVs4oCZcyA1LjEgdGVzdAprZXJuZWwsIGhvd2V2ZXIgbmVpdGhlciBvZiB0aGVtIHN1Y2Nlc3Nm
dWxseSBib290IGluIHRoZSBmbG93IEkgYW0gdXNpbmcuCgoKPiAtLSAKPiBBbmRyZWFzIFNjaHdh
YiwgU1VTRSBMYWJzLCBzY2h3YWJAc3VzZS5kZQo+IEdQRyBLZXkgZmluZ2VycHJpbnQgPSAwMTk2
IEJBRDggMUNFOSAxOTcwIEY0QkUgIDE3NDggRTRENCA4OEUzIDBFRUEgQjlENwo+ICJBbmQgbm93
IGZvciBzb21ldGhpbmcgY29tcGxldGVseSBkaWZmZXJlbnQuIgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdAps
aW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
