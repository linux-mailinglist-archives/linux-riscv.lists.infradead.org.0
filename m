Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD6A9AED5
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 14:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAEFufo6vKvJi3Vxc70thWsMqrb5re8z3oSiRAX0B38=; b=o0EioB8nTg4KOj
	7QuSG3vSdLdEsdNnv3AeBzHWhMTSm6/2BiZZXbNw9ZeTXeFo4qvYfrI373rkDIAovbxQbN682Nioy
	zALQQsj2VDRxgbcI52b1zYLdrDmhmzS550ZYxM+tX4twEF6KvvE4QerQFEGzUxnqz/LOEJJUBS23k
	k5aGhGkvYxYtfpv6CtUycxh2mfZwrKllLadkcLf1P72ZoVT+fz9UZHx1KvvJu418TpzUpiZz2X4Nc
	fgszqu5fXugSTiZj/o4tppsAfmqf9UPnb6KDWcYTGEqtlJBwJeNzHFj6WN4HgHDRpSVi9hft8NpTE
	Z5bVXpV9jhmEYRyovofg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18PG-0002V8-VL; Fri, 23 Aug 2019 12:11:02 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18P7-0002JL-S7
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 12:10:55 +0000
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 465722CE955
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 12:10:53 +0000 (UTC)
Received: by mail-wm1-f71.google.com with SMTP id n13so2916209wmi.4
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 05:10:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YmpuoFAf1JV9E3g21xDaHXmAHG9KWMG9xyLy+0tzG68=;
 b=fTyeZQetixyi0bH+On43HeVl6XRZ4HXlWHaEUHiTsnCpDk2q2tKHr0uzMJorBovLyV
 lqK36X06Wu8zwWA0ppQ0kmb331mU5yl6FG4E3h7/eG17B3Q94aenWuJ0s14wqLeXT2/B
 VMcynrThtPDw2Lk3ck3nICI4IMAqjFSGb7EbmSGRhEqrllckSM4YhHBaTTnKBJvvNtti
 B3fyPNhLiD4XJHW3tOjVg9FMdASx/K0fZNNhKCiCxbdQAfWW1CObDs8UOQ8/3RSZHz0p
 4obrbkRWP9gJdIlnAdhjCylxTs7LZrYAtDymx19kGR/bbkdPjrEqLkLYtdrtjmfGp2xs
 pE9A==
X-Gm-Message-State: APjAAAXgXDtFkaNcPsO0FpPys6uRw1MuetAONj0YbHBzZSdV9L8R2MiS
 F5YcTpIucn7EczpSYzm/XYgr58cMIUObDZSxZkuQrojiCuNoxmff6UBg/pPfDpk8+CCtv2chBVI
 73dGKr8No5M1m6AQipibOfN5EvhDl
X-Received: by 2002:a05:6000:1c8:: with SMTP id
 t8mr4657580wrx.296.1566562251953; 
 Fri, 23 Aug 2019 05:10:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzyVxw1qUQIBTcRkSh95Cdl4gIPkdK+LHTRDd3Xtmfn2XR4EHjMMfyBhL3S7uHbsTcvuBxUtQ==
X-Received: by 2002:a05:6000:1c8:: with SMTP id
 t8mr4657537wrx.296.1566562251686; 
 Fri, 23 Aug 2019 05:10:51 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:4566:f1b0:32e7:463f?
 ([2001:b07:6468:f312:4566:f1b0:32e7:463f])
 by smtp.gmail.com with ESMTPSA id g197sm2205295wme.30.2019.08.23.05.10.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Aug 2019 05:10:51 -0700 (PDT)
Subject: Re: [PATCH v5 00/20] KVM RISC-V Support
To: "Graf (AWS), Alexander" <graf@amazon.com>, Anup Patel <anup@brainfault.org>
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <8a2a9ea6-5636-e79a-b041-580159e703b2@amazon.com>
 <CAAhSdy2RC6Gw708wZs+FM56UkkyURgbupwdeTak7VcyarY9irg@mail.gmail.com>
 <757C929B-D26C-46D9-98E8-1191E3B86F3C@amazon.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <fda67a5d-6984-c3ef-8125-7805d927f15b@redhat.com>
Date: Fri, 23 Aug 2019 14:10:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <757C929B-D26C-46D9-98E8-1191E3B86F3C@amazon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_051053_938382_01BFBDFB 
X-CRM114-Status: GOOD (  13.19  )
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 23/08/19 13:44, Graf (AWS), Alexander wrote:
>> Overall, I'm quite happy with the code. It's a very clean implementation
>> of a KVM target.

Yup, I said the same even for v1 (I prefer recursive implementation of
page table walking but that's all I can say).

>> I will send v6 next week. I will try my best to implement unpriv
>> trap handling in v6 itself.
> Are you sure unpriv is the only exception that can hit there? What
> about NMIs? Do you have #MCs yet (ECC errors)? Do you have something
> like ARM's #SError which can asynchronously hit at any time because
> of external bus (PCI) errors?

As far as I know, all interrupts on RISC-V are disabled by
local_irq_disable()/local_irq_enable().

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
