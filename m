Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0B67A706
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 13:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P78avomqr/uKuk5SYQWN+ab+tAzjPrWSw+d0THyqxYo=; b=UMGTa/QjAZVTxH
	KgRephrUZLXKvpvLfUCI+L9QpYzUpom4szqKOeWGIMkILcZHqCf37YePmTESQID2ILx02rrqoBl7L
	1bWh/r5iXcIgH1kfzIqUI96UxmsFkGkCti9S+SHb+wNhFpd+kf3pWNeSmlucAxk7sw2JDtxsmU4Ao
	ttVJwR3DnkXh5uWS0tusfw9cQfvEavqK2PaDGDp8A/6nXKnni74WP+WNiKTqF4Mxr+VNB0Cs2Mohd
	1mwQHJUR0zYvf5E87SiBW4sJ0PjGqEhT/S5tu6btzZzX1wAY/JeDweA9QfPkCAfX8HLc4cmqPJNEj
	IVSnsqUlyvqmc0L5J2Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQNZ-00015b-8t; Tue, 30 Jul 2019 11:33:17 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQNV-000147-PB
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 11:33:15 +0000
Received: by mail-wm1-f65.google.com with SMTP id v15so56829283wml.0
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 04:33:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UPB+O1cCb7Wq2RKCoVQnzfZBI5pS9MKq+7qoNAVhJ6s=;
 b=ikBupbZEwa80b3yMIVqt9PVCicoJ5Ru9+3vi/h5gRLb7Ci2ATfQ8ZiMCKjNxr2zD5M
 POr/3fn/ZW9YuRS7KT0wzY7b8I94O+FmCT3P1Pc9Knr7lHNHWYsSpPmSIOKAig0PXoyX
 WaXF8dtI2SXBjY/rH3o8VIWeOZnWD1NfacmxSH0UDyW4OsDblt0ZNM9e/h0WdCEtBHcN
 UJYF2ERved6scZRCTHhjYdY0sVm3K7W1l/VhFVEnMF+4Q5IjUgrHpgWEaVCr3CZN0HCz
 3fWHEkNushU/avxuLa9F+o8gy2ZgbvDLktsgt7Zb58BORITSrwvt3OchM4cTmWLosARt
 FRDQ==
X-Gm-Message-State: APjAAAU+Rxsn8/zrsXqOLhfB0EbJEYmkhpg4NnHIfTA+RgiC0PM3HWZK
 b0HLvkomYMk41yqxOWU6U6Axjg==
X-Google-Smtp-Source: APXvYqwZbQfaWi8ZX3vZiY1Jont5uSIg4Z3fLMXkr7rwafZ4q9S6fJyyXi6HPOxn4HmB3Yz8Zlp4bw==
X-Received: by 2002:a7b:c144:: with SMTP id z4mr109313020wmi.50.1564486390353; 
 Tue, 30 Jul 2019 04:33:10 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id j10sm111237085wrd.26.2019.07.30.04.33.08
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 04:33:09 -0700 (PDT)
Subject: Re: [RFC PATCH 00/16] KVM RISC-V Support
To: Anup Patel <anup@brainfault.org>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <72e9f668-f496-3fca-a1a8-a3c3122a3fd9@redhat.com>
 <CAAhSdy3Z6d2phRGo20eNWfa4onFwFtsOUPM+OCD465y0tvQ5wg@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <965cffdb-86e2-b422-9c23-345c7100fd88@redhat.com>
Date: Tue, 30 Jul 2019 13:33:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy3Z6d2phRGo20eNWfa4onFwFtsOUPM+OCD465y0tvQ5wg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_043313_815644_A8B9968D 
X-CRM114-Status: GOOD (  12.83  )
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

On 30/07/19 07:26, Anup Patel wrote:
> Here's a brief TODO list which we want to immediately work upon after this
> series:
> 1. Handle trap from unpriv access in SBI v0.1 emulation
> 2. In-kernel PLIC emulation
> 3. SBI v0.2 emulation in-kernel
> 4. SBI v0.2 hart hotplug emulation in-kernel
> 5. ..... and so on .....
> 
> We will include above TODO list in v2 series cover letter as well.

I guess I gave you a bunch of extra items in today's more thorough
review. :)

BTW, since IPIs are handled in the SBI I wouldn't bother with in-kernel
PLIC emulation unless you can demonstrate performance improvements (for
example due to irqfd).  In fact, it may be more interesting to add
plumbing for userspace handling of selected SBI calls (in addition to
get/putchar, sbi_system_reset and sbi_hart_down look like good
candidates in SBI v0.2).

> We were thinking to keep KVM RISC-V disabled by default (i.e. keep it
> experimental) until we have validated it on some FPGA or real HW. For now,
> users can explicitly enable it and play-around on QEMU emulation. I hope
> this is fine with most people ?

That's certainly okay with me.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
