Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4267A35C
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 10:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUGNPHFVYjPURxUjt2WoKEgoHUeiq2MJiOen+KHdpT8=; b=m83BvwJIrqRf7T
	+P7Hip0xEskdEmgp9k3wAoJ1d93iVoZz8ebyE/qchwkLvqVGDnSGas+b5wN6qbaD79TnFEApytKTD
	FIj7hvM+xB6T6ZBMDeIoGrIRHXlhi6H1YFTpPunAfX+Abgb7A0Fv5d9EoRkFEBv1+DyzIEwGvsgsT
	27xA98aotoug95C5+TIRXXyABhmdmkFPwx2URNAD/p2YbFsZEHEgvh03aK6/tWb8VAi/baa5pNgsa
	aKVssvlL5+o4wGIIaH/BTOBVyxyOf4nSNa+db8nzm1jHtGD5+3qi+el3ooMzC7Xg48coe1FAxuzVj
	MEwQuWj7DvoY13f9EiNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNoK-0002r0-Px; Tue, 30 Jul 2019 08:48:44 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNoG-0002qS-FN
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 08:48:42 +0000
Received: by mail-wm1-f65.google.com with SMTP id s3so56288829wms.2
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 01:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wubL2/vgzPA1pd7g/Ft25BpXcTqsyo1e/4gw/momGtU=;
 b=ZEmMP7g2kAm57lTqaR98imXGb0Y+y6t9ux38gnZMHecJeHLikvlS2TVlzEYKAqnphy
 dTuhEgFfCR3SQmsJWLLBQK5+TPd5dotmA07i6pmvVPsLNDokQhG+5HiqsljYLBMHIIJZ
 8fXEv6tXjITTpEoJonmWGodKfsN/+C1wR6ZntRBxD09UfGusSyGjUUi8G5k3uyz1iBxY
 x9m+TuExCstq5+mtsxS2vkH7JMr/RZPtuDAaZ4c2BTnBepFyjmwr8DadUMHQuKD4qrak
 ggOtJ5ibYxky9nlfOkNnIEaCbDhPeOaHIc4dpvhO10x4DDzWA+ACJcPHS3Bvr6jGkAdB
 Lb9g==
X-Gm-Message-State: APjAAAVGMIzBmJRIPrmdKJNd+Uvjra+ik59+FjZ24BcdY48B4zhxQ0/M
 9qXQXKguTOwg/uK9qronZnS1lg==
X-Google-Smtp-Source: APXvYqyiUPbNE/jZJSqWwOHETlXCAehk9SFPzETDwVZDm9bd+5/kuQgX8raiwe8ulQU1S0IqxtSatA==
X-Received: by 2002:a7b:c0d0:: with SMTP id s16mr74366958wmh.141.1564476518833; 
 Tue, 30 Jul 2019 01:48:38 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id f3sm46989185wrt.56.2019.07.30.01.48.37
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 01:48:38 -0700 (PDT)
Subject: Re: [RFC PATCH 04/16] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-5-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <ade614ae-fcfe-35f2-0519-1df71d035bcd@redhat.com>
Date: Tue, 30 Jul 2019 10:48:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-5-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_014840_516063_8447041E 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 29/07/19 13:56, Anup Patel wrote:
> +	cntx->hstatus |= HSTATUS_SP2V;
> +	cntx->hstatus |= HSTATUS_SP2P;

IIUC, cntx->hstatus's SP2P bit contains the guest's sstatus.SPP bit?  I
suggest adding a comment here, and again providing a ONE_REG interface
to sstatus so that the ABI is final before RISC-V KVM is merged.

What happens if the guest executes SRET?  Is that EXC_SYSCALL in hedeleg?

(BTW the name of SP2V and SP2P is horrible, I think HPV/HPP or HSPV/HSPP
would have been clearer, but that's not your fault).

Paolo

> +	cntx->hstatus |= HSTATUS_SPV;


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
