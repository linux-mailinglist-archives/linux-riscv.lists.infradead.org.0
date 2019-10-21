Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FD2DF42E
	for <lists+linux-riscv@lfdr.de>; Mon, 21 Oct 2019 19:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2FjtrHmdUoxw/qhVhYcrMLU80l5kLmoDKZhcNkrJ/w=; b=IEhrDzmUlghQTA
	DyBqYgQImRpRA9cIW9FjIgbKT4RdPi0rsHQLk1zvxEcesJc/nF3TqLoMCAKueKacHNLCwqIa+vXF9
	YaFUzaCitSxGyIgft9IAKHaUOyGNT2FNAAob5/wFcWBu0HXNSGTE6v8PVQbb0MLlrJnSUZNvR+w6V
	shT1YzjfBtWsgHAmufWxIQk9yGAcT3CvRKYjpZ3q8Wrp2IRlw9v0qePsdf6vphU0TNOOII1kZZQFF
	GhmfluA4xYrfIG9SFIgQ/aAwCWFyeWKRpywpesI9THRnyAFibup+4+yA1mDOOyk92hIeevX8H+ThU
	aB3ndxRNoREMvjKoyqhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMbSi-0007hm-Gg; Mon, 21 Oct 2019 17:27:20 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMbSf-0007gr-K6
 for linux-riscv@lists.infradead.org; Mon, 21 Oct 2019 17:27:19 +0000
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9D2A05945B
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 17:27:15 +0000 (UTC)
Received: by mail-wr1-f70.google.com with SMTP id c6so7689131wrp.3
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 10:27:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o4xeYtdnmb8NdCuVzBbUa7fVvwoUzqqrPHBPV9zqYVk=;
 b=sa0ZJMh6yEMxcCZMxOVxdl832jfnPTHeJMQPomEJ0A9p3Fv4JmPLqQUKJhsaGEMOjv
 vZdEcdabaFqNfFe58hR9KWMHI4jcdfSRTaFX0WHYWJ5Yv7YESpu3SOw7pB0ewlX8WaG3
 gdSmLh5eU/5/yLAfRYDAtYDeb47/jOWZGSTfNNzydE26bGcpjZL+jYeu5E4tirC1lLUf
 Ix8MklhvdpaM7JJ2ScEw7aHh568dhanBpZBXJo86HQ5Bqt+LKR6hOWWnRHxy3XsY1ZIy
 +R1GzZmD26phsay1oj3i3mCkbWQmO9GT0bm+sAFFVoUUsg172CYN2ON0MhlDdB7LXfkY
 kO7g==
X-Gm-Message-State: APjAAAVi4scmfMMLbohi/+8zzYI5OAKFka/KU9yRhGX//wOkESbVuNMh
 jhMQ5KPzG0B3M1S5R8dWDXEaCeyQCDkoDD2ByDsWszTP+0mcA1UP13nmwXXg5MiLSYvBskKzlpz
 Vc9ey2BmFTq3LGUHyhxwlORyo7djC
X-Received: by 2002:a1c:a556:: with SMTP id o83mr21599601wme.0.1571678834215; 
 Mon, 21 Oct 2019 10:27:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzipaLfA3kUVnqB/RRSN8weGdEW5X/KaWu7Reo2wlZT9NrXTpU395PLRqKuErbW+MMVjo6+Dw==
X-Received: by 2002:a1c:a556:: with SMTP id o83mr21599580wme.0.1571678833914; 
 Mon, 21 Oct 2019 10:27:13 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:847b:6afc:17c:89dd?
 ([2001:b07:6468:f312:847b:6afc:17c:89dd])
 by smtp.gmail.com with ESMTPSA id t8sm15118590wrx.76.2019.10.21.10.27.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Oct 2019 10:27:13 -0700 (PDT)
Subject: Re: [PATCH v9 20/22] RISC-V: KVM: Fix race-condition in
 kvm_riscv_vcpu_sync_interrupts()
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <20191016160649.24622-21-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <1d2e9514-235e-183e-b4fc-d3becc9ce471@redhat.com>
Date: Mon, 21 Oct 2019 19:27:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191016160649.24622-21-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_102717_682355_B23F688D 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 16/10/19 18:12, Anup Patel wrote:
> +	/* Read current VSIP and VSIE CSRs */
> +	vsip = csr_read(CSR_VSIP);
> +	csr->vsie = csr_read(CSR_VSIE);
> +
> +	/* Sync-up VSIP.SSIP bit changes does by Guest */
> +	if ((csr->vsip ^ vsip) & (1UL << IRQ_S_SOFT)) {
> +		if (!test_and_set_bit(IRQ_S_SOFT, &v->irqs_pending_mask)) {
> +			if (vsip & (1UL << IRQ_S_SOFT))
> +				set_bit(IRQ_S_SOFT, &v->irqs_pending);
> +			else
> +				clear_bit(IRQ_S_SOFT, &v->irqs_pending);
> +		}

Looks good, but I wonder if this could just be "csr->vsip =
csr_read(CSR_VSIP)", which will be fixed up by flush_interrupts on the
next entry.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
