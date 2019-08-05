Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C1482112
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 18:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DS5Uu1KpoRFncG/CMjKchZlDIxfBQCY4/QwUsd0XzA=; b=kLu0YJ5HPSPo3f
	fgydcRvCh0jcDHoHVy7ypWAscuF0QYxED4VYmGOLJ9IduLqBzKKczwGW5d1TD/B2iNJZV/dMl0vZa
	ijvl9OnYMFvSWVsdzTOpO/7lhVau3/gicoyR+hw4bw2J4hY+EZt0Aa6/nMTXzNK/z7MLUwKEC2P4V
	gKDY/yZgIgWZ7na48qWZ34YGk1vm8hY2bUQTHECjRqEoqNv0DKEpOvioKaCeXbWb5fUFvXneZIlL0
	9m6s/nQX5xsAdK2eoP/aVHWyZdgjVYghiolpw0EJz7Nl8Bh9jiStEocKR22+iMi4PaY0MQIIVFaxe
	NiUUheiyPukfvDzEihJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufS0-0006ZW-Vy; Mon, 05 Aug 2019 16:03:09 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufRw-0006Z6-HH
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 16:03:06 +0000
Received: by mail-wm1-f65.google.com with SMTP id v15so75294704wml.0
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 09:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LwK/9xcoxcLhVd0bC7/eyesTfSVbLSLef7bJ1QJeiPA=;
 b=X+lluQLYQysgg1cZdCaCwzQ0PKkpUekC2kah6KQ8bC0/Xn7ME8UYNqQtircdjyD26Z
 bMQG2I3KEfsgw8Xwz/Jijl9zTBB2BB4rpHYn41pqjbIRXJwBLTfzTknc87+/TVb5PC2K
 Nu3P1gNLXe8J6/yWnyycMLKdQHWy/tvcaW0XHkbSsegOXOq+e2cLEqIUouQeyTPxMyTN
 1tZlv0bN9aezbFVQhhE7/vQAEjGHdwzMCdJUB08cDnvQ5d/++CDDOnzvKlIU2VTmlVyT
 KdezdIaSwy6lEr4SZ2JJgAN10bmZJg42ts7qtwp2v8trReB8vCQD8fFxJxUyOEbCS24c
 UrAw==
X-Gm-Message-State: APjAAAX9KrQ0/iWHbQPX/9jXo5FX3G3DUTXf+2RJYpZd7E/n1PWNiaKK
 tJUK4FGQ0Y95GH+H+Y5sYK6ERA==
X-Google-Smtp-Source: APXvYqzGW/23QI5xsDwaQipvdvH1ice7rq/tQKOY4EpSalvG7w4huAOnxqDQnYhgBxpemU160KN5eg==
X-Received: by 2002:a05:600c:1008:: with SMTP id
 c8mr19642061wmc.133.1565020983219; 
 Mon, 05 Aug 2019 09:03:03 -0700 (PDT)
Received: from [192.168.178.40] ([151.21.165.91])
 by smtp.gmail.com with ESMTPSA id n3sm76821109wrt.31.2019.08.05.09.03.02
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 09:03:02 -0700 (PDT)
Subject: Re: [PATCH v3 11/19] RISC-V: KVM: Implement VMID allocator
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190805134201.2814-1-anup.patel@wdc.com>
 <20190805134201.2814-12-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <21bdde39-8d33-6aae-e729-476ce11406a3@redhat.com>
Date: Mon, 5 Aug 2019 18:03:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805134201.2814-12-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_090304_583310_18063D56 
X-CRM114-Status: GOOD (  12.90  )
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

On 05/08/19 15:43, Anup Patel wrote:
> +	spin_lock(&vmid_lock);
> +
> +	/*
> +	 * We need to re-check the vmid_version here to ensure that if
> +	 * another vcpu already allocated a valid vmid for this vm.
> +	 */
> +	if (!kvm_riscv_stage2_vmid_ver_changed(vmid)) {
> +		spin_unlock(&vmid_lock);
> +		return;
> +	}
> +
> +	/* First user of a new VMID version? */
> +	if (unlikely(vmid_next == 0)) {
> +		WRITE_ONCE(vmid_version, READ_ONCE(vmid_version) + 1);
> +		vmid_next = 1;
> +
> +		/*
> +		 * On SMP, we know no other CPUs can use this CPU's or
> +		 * each other's VMID after forced exit returns since the
> +		 * vmid_lock blocks them from re-entry to the guest.
> +		 */
> +		spin_unlock(&vmid_lock);
> +		kvm_flush_remote_tlbs(vcpu->kvm);
> +		spin_lock(&vmid_lock);

This comment is not true anymore, so this "if" should become a "while".

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
