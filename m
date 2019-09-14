Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CC0B2B4A
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 15:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=eqJNDAgAkO4OD5ywIVLLORbRiHptIoJO4b/5kdopfMM=; b=H7KJw9hvmHF9MpoFJzbEyN/Dg
	jCs0Z5U7K66r3EM8fHFzVGrKTarbwKPxKtDsftznk1l0OYXwvvDxGXzvLlehM2bS5Fglxd+X+c1EY
	yGKXRMyejG9HZ9KlFaTFttq6RkX1SL40zzzKWM730gnsPgvMbsymgMNNR98tKvrAc60BI6LEKvGHA
	oyX4b/59/uXjX5VyfCjRknfMkjtL/Ud1NJcG91KPLtq1YVKv393EOWK51d47Z9YjVQPHtcR29imRU
	enNYTs3G59oYbGOrR17+BsUdYJjMJdZNGfDHfHlN+MnckhgGeQXVTVSThLFkj+3G6mj6se5ImKv2U
	d1UaGz1Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i97el-0000yd-BE; Sat, 14 Sep 2019 13:00:03 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i97eh-0000s0-EE
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 13:00:00 +0000
Received: by mail-pg1-f196.google.com with SMTP id z12so5210670pgp.9
 for <linux-riscv@lists.infradead.org>; Sat, 14 Sep 2019 05:59:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=6diO6eSUOGmz76ljddxSI/7HgVoh3wlKhuqDW6TPNNI=;
 b=oG76pQ5zcJM6GpOB5U+5eh64F7uh/Fv4TwN29oFtHEIi/NMHqbXtakZR0c3qjQWox0
 Lp7SQ6OzHyeHNH8qf8nkf6k7u0MDzh+FDbLj165b3MtWk3R3PFTpCMmqperX9g174u6r
 YNSmMVwi9+vVdZUb6lieXTHgo+IxYBWX707zOoHAtqbPEothV6UKXYaSKnxVH9TLUm6k
 /5WI4lvzF1jaWcOtGEDzDV/oH6P/KyqzRmw3LLJVIAA6oJNajptL1TLNQJaMsKxDt8O5
 X9nMZL95W5tmt7Gz1GYPiYWDwyFReRI5dN60Cd0RvmoLCJwAIeUlWTc3hJsQ1iJb39A2
 Jl7g==
X-Gm-Message-State: APjAAAUlfbR5328xaxx4R4oSgENnqq9O9TGo7T4Ub0ojBub2Of7aTJCs
 C70mpfSbkXZArvChR66Whdb4WQ==
X-Google-Smtp-Source: APXvYqynfdYc2ptc0xQfgnYnCNXJTDLZ2JGB3tku+3p+zwrQ53V7lsFNW5DAukBS7j+VSynO3hMqGQ==
X-Received: by 2002:a65:6256:: with SMTP id q22mr2197933pgv.408.1568465996538; 
 Sat, 14 Sep 2019 05:59:56 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id f27sm24474034pgm.60.2019.09.14.05.59.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 05:59:55 -0700 (PDT)
Date: Sat, 14 Sep 2019 05:59:55 -0700 (PDT)
X-Google-Original-Date: Sat, 14 Sep 2019 05:55:05 PDT (-0700)
Subject: Re: [RFC] buildtar: add case for riscv architecture
In-Reply-To: <X9f9LozkDQUeBwasTsPlPseP6ZT5yJHNY2GcIgoAgNQJPuFAyYimnDXTJUqxfrZ64GOIl5-uPh07NZnD1pi4uWhCpZvbu9khOW6rEq5P4jU=@aurabindo.in>
From: Palmer Dabbelt <palmer@sifive.com>
To: mail@aurabindo.in
Message-ID: <mhng-ed262582-dc00-41fe-9be5-2487297f2432@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_055959_482385_19DB368D 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: aou@eecs.berkeley.edu, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCAxMSBTZXAgMjAxOSAwNTo1NDowNyBQRFQgKC0wNzAwKSwgbWFpbEBhdXJhYmluZG8u
aW4gd3JvdGU6Cj4KPgo+PiBOb25lIG9mIHRoZSBhdmFpbGFibGUgUmlzY1YgcGxhdGZvcm1zIHRo
YXQgSeKAmW0gYXdhcmUgb2YgdXNlIGNvbXByZXNzZWQgaW1hZ2VzLCB1bmxlc3MgdGhlcmUgYXJl
IHNvbWUgbmV3IGJvb3Rsb2FkZXJzIEkgaGF2ZW7igJl0IHNlZW4geWV0Lgo+Pgo+Cj4gSSBub3Rp
Y2VkIHRoYXQgZGVmYXVsdCBidWlsZCBpbWFnZSBpcyBJbWFnZS5neiwgd2hpY2ggaXMgd2h5IEkg
dGhvdWdodCBpdHMgYSBnb29kIGlkZWEgdG8gY29weSBpdCBpbnRvIHRoZSB0YXJiYWxsLiBEb2Vz
IHN1Y2ggYSBjb3B5IG5vdCBtYWtlIHNlbnNlIGF0IHRoaXMgcG9pbnQgPwoKSW1hZ2UuZ3ogY2Fu
J3QgYmUgYm9vdGVkIGRpcmVjdGx5OiBpdCdzIGp1c3QgSW1hZ2UgdGhhdCdzIGJlZW4gY29tcHJl
c3NlZCB3aXRoIAp0aGUgc3RhbmRhcmQgZ3ppcCBjb21tYW5kLiAgQSBib290bG9hZGVyIHdvdWxk
IGhhdmUgdG8gZGVjb21wcmVzcyB0aGF0IGltYWdlIApiZWZvcmUgbG9hZGluZyBpdCBpbnRvIG1l
bW9yeSwgd2hpY2ggcmVxdWlyZXMgZXh0cmEgYm9vdGxvYWRlciBzdXBwb3J0LiAgCkNvbnRyYXN0
IHRoYXQgd2l0aCB0aGUgekltYWdlIHN0eWxlIGltYWdlcyAod2hpY2ggYXJlIHZtbGludXogb24g
eDg2KSwgd2hpY2ggCmFyZSBzZWxmLWV4dHJhY3RpbmcgYW5kIHRoZXJlZm9yIHJlcXVpcmUgbm8g
Ym9vdGxvYWRlciBzdXBwb3J0LiAgVGhlIGV4YW1wbGVzIApmb3IgdS1ib290IGFsbCB1c2UgdGhl
ICJib290aSIgY29tbWFuZCwgd2hpY2ggZXhwZWN0cyB1bmNvbXByZXNzZWQgaW1hZ2VzLiAgClBv
a2luZyBhcm91bmQgSSBjb3VsZG4ndCBmaWd1cmUgb3V0IGEgd2F5IHRvIGhhdmUgdS1ib290IGRl
Y29tcHJlc3MgdGhlIGltYWdlcywgCmJ1dCB0aGF0IGFwcGxpZXMgdG8gYXJtNjQgYXMgd2VsbCBz
byBJJ20gbm90IHN1cmUgaWYgSSdtIG1pc3Npbmcgc29tZXRoaW5nLgoKSWYgSSB3YXMgZG9pbmcg
dGhpcywgSSdkIGNvcHkgb3ZlciBhcmNoL3Jpc2N2L2Jvb3QvSW1hZ2UgYW5kIGNhbGwgaXQgCiIv
Ym9vdC9pbWFnZS0ke0tFUk5FTFJFTEVBU0V9IiwgYXMgY2FsbGluZyBpdCB2bWxpbnV6IGlzIGEg
Yml0IGNvbmZ1c2luZyB0byBtZSAKYmVjYXVzZSBJJ2QgZXhwZWN0IHZtbGludXogdG8gYmUgYSBz
ZWxmLWV4dHJhY3RpbmcgY29tcHJlc3NlZCBleGVjdXRhYmxlIGFuZCAKbm90IGEgcmF3IGd6aXAg
ZmlsZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
