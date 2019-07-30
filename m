Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153F07A381
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 11:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rmj3Kv5s4Y7QRzVCggQwS3tMTeOamK/6jQEjrXMqrKE=; b=ay/IuY287te2qu
	kIGgUJr+F2knF7WRDqoNPhBoiz/3Cy43GrYhps2v+NZaPuXoASzFAJAEc5PBwlzJ/C+s0s3uxl+/t
	5bowqxqY6MX041zYgMoOrgLWbV9wNMTaEl+u0oXTMUkVeAkJxz9hGmrA4hD9yW9bEUp6YfB6c/ziK
	9FWXoo/tqofqj1NBfQTbuVdLJruGj7bjvphIPzEqKEKJBJuiOP7zzNJdtog5+/9J+lMWHu78L91lI
	ONEv6UJcoIcFDkZC62KQM+jFXlCrva6oHkYX8sy7UxeT50RNL9wyYXREvP43D0FEDR2wElkx+enLf
	k9U6Uv64Ml0tYIhNzx8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNzX-0007bm-Gi; Tue, 30 Jul 2019 09:00:19 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNzT-0007aW-U1
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 09:00:17 +0000
Received: by mail-wr1-f66.google.com with SMTP id x4so11691980wrt.6
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 02:00:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OXM02iYz2IRdbVYTSZ1WZe77JTnwpAeIa8FaghuZo4c=;
 b=pttW/YXrK5QZKgMiksnaDLACYaWfyB16soNJ6Y9AmrtrkbwQ/H2hbP4c93Ac4Zj3DG
 Q9rYXLKIZ9u8KGbeLHua5Iv8xmMUKFPowP15mzSEgS2dkd8ehSRhT1yMg6H+kdu71fuK
 c0NzPqmtQj1gw4tsi55e1IJCotGVD3Ozg57Zhax95+qHIUlmjUaJrEJXoceMNoaH8OPc
 SG14Hm+mmEogesK+AplP8IwLTiFGhYqer4dtaxDIGPV/QtRtkKIvhl/igTPgUAldZRFZ
 0zikY7pGtuUNOx5DgR6Yb8r1QIrQQawHTBBxMq3IqsTDbAct0VutcymyYNj3rTR2NeW+
 xZww==
X-Gm-Message-State: APjAAAWzUBDshAc0bJNum/rUNz20u1Q8MOXIr+P5CxD+QWynkmzuoo0W
 YSKaML90HrhdTcEnbAysDa93jQ==
X-Google-Smtp-Source: APXvYqxVuoAVEo5L0whFkRYU53jDf4dvvaMxhfAYJm0ZVclfasplU5lwtvKcELxa3jmCorypxW7/kw==
X-Received: by 2002:adf:e8d0:: with SMTP id k16mr126870879wrn.31.1564477209192; 
 Tue, 30 Jul 2019 02:00:09 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id y6sm56247471wrp.12.2019.07.30.02.00.08
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 02:00:08 -0700 (PDT)
Subject: Re: [RFC PATCH 11/16] RISC-V: KVM: Implement stage2 page table
 programming
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-12-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <6ebde80e-e8a9-6b7b-52ea-656b9a9e5e5b@redhat.com>
Date: Tue, 30 Jul 2019 11:00:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-12-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_020015_969625_660B63EA 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 29/07/19 13:57, Anup Patel wrote:
> This patch implements all required functions for programming
> the stage2 page table for each Guest/VM.
> 
> At high-level, the flow of stage2 related functions is similar
> from KVM ARM/ARM64 implementation but the stage2 page table
> format is quite different for KVM RISC-V.

FWIW I very much prefer KVM x86's recursive implementation of the MMU to
the hardcoding of pgd/pmd/pte.  I am not asking you to rewrite it, but
I'll mention it because I noticed that you do not support 48-bit guest
physical addresses.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
