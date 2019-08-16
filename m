Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530F490463
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 17:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aaxcy7+NgrP/3QkfiM9uzwOfePNl/YhvCYK2sgJNiBo=; b=MsLWZXYLdRqJIq
	VbDmGs5kD4YN22CYopPai6IEtKbb+oM9R94gzxIwBBIGYVGOiNJmwK5aow3kU8BFx/mhZ5j/ijRWR
	sjhFToETnUxCO30W+9tuh2ydi0eccoPlGImoMN0a3kl04wXyG3EeLkPeToisV0i2TSKpF1FvzrhNd
	4XeQTi0wLOI/OnSYldO7vWyOURkv5qJK+WmywUuYNTcgOepaMAk8R/iyXQIdpH2fAc2eLTYcNb4E4
	Ug7un8UwdM9HVUR5USY3g+nSMnRNSj10eEDvYr/23TooV6WWEaKKKuzS2OAviwo3UzZ71G4n4hwnx
	szXRivR6f6tUnXtP5IvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hydqv-0001iU-Dc; Fri, 16 Aug 2019 15:09:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hydqp-0001Xh-Ot
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 15:09:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id l2so4353996wmg.0
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 08:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dQHxruTjdFPZOFnWpprDaQA7ydA7B14CSh8CNyClXAY=;
 b=YZji864o0zoh6dmobJeceUSN8xsYjt5qHzn5i32uB5CPEm3uR6UTTm9+0s5zrjk/+5
 NVU7c2PRCcheqfyhLnhX9aE69NfKZYcN5yo+FfDWt9TdgxnUekW90C74jEYPHaimqvxD
 hMT/2zCdwkevTxmAN7E1ar0sAb8SXCEWRRkLdI8uIv66EUkvr3/zpTK/pnQLrPvcwlDY
 gbsAe7bvykZ34QgHNAjgpCw/CmhxCLS66l/c0ie/Uz/EtPMnfwW2Ba/I6sfveYQUaDPE
 h9QKBmIpQwqiLqfx0FArSZM1oN/Tovy1UbSBX4FKpdHnC5K+/TMsokH1AQbJeaosSiuc
 gM/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=dQHxruTjdFPZOFnWpprDaQA7ydA7B14CSh8CNyClXAY=;
 b=V/Ql15ZvFIhYPwyDASA2AqkhotzbiCPM6Op+S/Y2r6n2baju+cAXQJKnrei5JfmWpG
 KXnl/oNibQxS2EevOqTW2rwSoDgHv7IsGtF2CYBSg5f/vp6K5OPurQjY5tsywUu1iyjc
 cvPb5GAXMaseY2Q0Zbb5cyx75jY6vBxhZavN2m3GYrk+EWKrdlR2V9I7HNLK8jndgBJd
 HcvDU67PGkH9TFV5kL1kV6e+BAv9gNJHt2xKwWtBCxEQcMQ8bmKMm3WCUEdkg4Ep8abT
 nr9q+H0hEiAgjYyPlWNaVABHJik5GWGSkkMJny61/wnwk+hzqXmx1GCZYto5mYYQ15/P
 Xo1A==
X-Gm-Message-State: APjAAAVpVcLyi3ITvRCOcMyB6xl51x/0X7A/6drhpUQqjTo4YI4Y1uMJ
 qLBw29RiONTePKuKNfgiWQWfthbhOIk=
X-Google-Smtp-Source: APXvYqy631R2ItoH2nwsj4ygQOohcysyq6yj1L7ZZtBjY6dxlj4RAMclqu5TzcnfyE4bflh32r1mEA==
X-Received: by 2002:a05:600c:d9:: with SMTP id
 u25mr8166044wmm.26.1565968149512; 
 Fri, 16 Aug 2019 08:09:09 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:d4e8:1742:2f00:abef?
 ([2a01:e34:ed2f:f020:d4e8:1742:2f00:abef])
 by smtp.googlemail.com with ESMTPSA id a19sm18399286wra.2.2019.08.16.08.09.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 08:09:08 -0700 (PDT)
Subject: Re: [PATCH v2 1/5] RISC-V: Remove per cpu clocksource
To: Atish Patra <atish.patra@wdc.com>, linux-kernel@vger.kernel.org
References: <20190731012418.24565-1-atish.patra@wdc.com>
 <20190731012418.24565-2-atish.patra@wdc.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <6ba37c45-2d9b-c01e-5f17-3ab919da4de8@linaro.org>
Date: Fri, 16 Aug 2019 17:09:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731012418.24565-2-atish.patra@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_080911_827807_ABE81874 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gMzEvMDcvMjAxOSAwMzoyNCwgQXRpc2ggUGF0cmEgd3JvdGU6Cj4gVGhlcmUgaXMgb25seSBv
bmUgY2xvY2tzb3VyY2UgaW4gUklTQy1WLiBUaGUgYm9vdCBjcHUgaW5pdGlhbGl6ZXMKPiB0aGF0
IGNsb2Nrc291cmNlLiBObyBuZWVkIHRvIGtlZXAgYSBwZXJjcHUgZGF0YSBzdHJ1Y3R1cmUuCgpU
aGF0IGlzIG5vdCB3aGF0IGlzIHN0YXRlZCBpbiB0aGUgaW5pdGlhbCBwYXRjaCBbMV0uCgpDYW4g
eW91IGNsYXJpZnkgdGhhdCA/CgpUaGFua3MKCiAgLS0gRGFuaWVsCgpbMV0gaHR0cHM6Ly9sa21s
Lm9yZy9sa21sLzIwMTgvOC80LzUxCgoKPiBTaWduZWQtb2ZmLWJ5OiBBdGlzaCBQYXRyYSA8YXRp
c2gucGF0cmFAd2RjLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1yaXNj
di5jIHwgNiArKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1yaXNj
di5jIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1yaXNjdi5jCj4gaW5kZXggNWU2MDM4ZmJm
MTE1Li4wOWUwMzExNzZiYzYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1l
ci1yaXNjdi5jCj4gKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1yaXNjdi5jCj4gQEAg
LTU1LDcgKzU1LDcgQEAgc3RhdGljIHU2NCByaXNjdl9zY2hlZF9jbG9jayh2b2lkKQo+ICAJcmV0
dXJuIGdldF9jeWNsZXM2NCgpOwo+ICB9Cj4gIAo+IC1zdGF0aWMgREVGSU5FX1BFUl9DUFUoc3Ry
dWN0IGNsb2Nrc291cmNlLCByaXNjdl9jbG9ja3NvdXJjZSkgPSB7Cj4gK3N0YXRpYyBzdHJ1Y3Qg
Y2xvY2tzb3VyY2UgcmlzY3ZfY2xvY2tzb3VyY2UgPSB7Cj4gIAkubmFtZQkJPSAicmlzY3ZfY2xv
Y2tzb3VyY2UiLAo+ICAJLnJhdGluZwkJPSAzMDAsCj4gIAkubWFzawkJPSBDTE9DS1NPVVJDRV9N
QVNLKDY0KSwKPiBAQCAtOTIsNyArOTIsNiBAQCB2b2lkIHJpc2N2X3RpbWVyX2ludGVycnVwdCh2
b2lkKQo+ICBzdGF0aWMgaW50IF9faW5pdCByaXNjdl90aW1lcl9pbml0X2R0KHN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbikKPiAgewo+ICAJaW50IGNwdWlkLCBoYXJ0aWQsIGVycm9yOwo+IC0Jc3RydWN0
IGNsb2Nrc291cmNlICpjczsKPiAgCj4gIAloYXJ0aWQgPSByaXNjdl9vZl9wcm9jZXNzb3JfaGFy
dGlkKG4pOwo+ICAJaWYgKGhhcnRpZCA8IDApIHsKPiBAQCAtMTEyLDggKzExMSw3IEBAIHN0YXRp
YyBpbnQgX19pbml0IHJpc2N2X3RpbWVyX2luaXRfZHQoc3RydWN0IGRldmljZV9ub2RlICpuKQo+
ICAKPiAgCXByX2luZm8oIiVzOiBSZWdpc3RlcmluZyBjbG9ja3NvdXJjZSBjcHVpZCBbJWRdIGhh
cnRpZCBbJWRdXG4iLAo+ICAJICAgICAgIF9fZnVuY19fLCBjcHVpZCwgaGFydGlkKTsKPiAtCWNz
ID0gcGVyX2NwdV9wdHIoJnJpc2N2X2Nsb2Nrc291cmNlLCBjcHVpZCk7Cj4gLQllcnJvciA9IGNs
b2Nrc291cmNlX3JlZ2lzdGVyX2h6KGNzLCByaXNjdl90aW1lYmFzZSk7Cj4gKwllcnJvciA9IGNs
b2Nrc291cmNlX3JlZ2lzdGVyX2h6KCZyaXNjdl9jbG9ja3NvdXJjZSwgcmlzY3ZfdGltZWJhc2Up
Owo+ICAJaWYgKGVycm9yKSB7Cj4gIAkJcHJfZXJyKCJSSVNDViB0aW1lciByZWdpc3RlciBmYWls
ZWQgWyVkXSBmb3IgY3B1ID0gWyVkXVxuIiwKPiAgCQkgICAgICAgZXJyb3IsIGNwdWlkKTsKPiAK
CgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNl
Ym9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEv
bGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+
IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
