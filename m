Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7867953C
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 21:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJBl6+1pDbOwwTbBQKjWMJu27DdgP/00beG2R0LldUA=; b=SvaIARqVTVaDCH
	jCFeB3mUTKRo1hYcUa2HHEAufHi/zMs2Nf3ho6pYtGRpz4pJG6U1cb2qXAMGcOJcJNMGDjC+ArIMa
	J4HgySBD2zqZzsKqHUHu7CO45aPTnS+PSpxJ/HnB4OvnCnxhSaJ+AdBgp9cM9MhWhy9ZqHMd2Nk78
	SRbSwMkkLljBFPYOf5vIFz8NQzoXPxbwpcZtXCndi/TXvtuFoM6ysAOT8guV7pUb8+Wmqih0P2rZl
	IrvvI6/NVzqi5KAuCl882qxJALb0KkoOE0QXMeTO++nSkpU2mYj4N6Z4Ji+A0UUohuh4z+UjDlwqH
	mG0621rySxHxb+LHde4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBVr-0006Kz-Ah; Mon, 29 Jul 2019 19:40:51 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBVm-0006Ih-Fn
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 19:40:48 +0000
Received: by mail-wr1-f68.google.com with SMTP id z1so63103628wru.13
 for <linux-riscv@lists.infradead.org>; Mon, 29 Jul 2019 12:40:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZgugjlZTeEEE0y6ZY8Fe7n+SwxVvrWXZp+43yEbz1Lw=;
 b=DHVIu4HGpJoNHu0Id0s+0P2tbC2CIGafwZYJ7Eew00M6s1QwG6hXIHPl3yEtxeegzg
 0Sk6G3t/TrCtQRQp0zUD9uQut3d/uaeyYTDFEvIhMD5FNsKjvFowEc+QRhVnBsN3KziC
 Ir/WMmC+PSsfXdxKiwg44ss5DGy3U8YZiGFxjlyZmhFO0G8QHQTPQj3gFmx6QxKUengK
 LMC/E5ObSY/eUAGSDyY00kHKewjuKM11tIeRhgkLkY/0TPB0JIFtpXt4WO6g2yZ5rlNi
 5jzSfWRD7BQ63PJDgpqQdS7QfwY604PWrNB5sfofs4w9CV7t21YWwDIWxCqnLVIe9NNj
 4HEw==
X-Gm-Message-State: APjAAAV/Jh8eqWdVmjRz0gohx012NlQ2g+uSs5VQVXeAL+57sHT42Nzb
 +gO2HY1e6jxIZOYovCPqL2wOuw==
X-Google-Smtp-Source: APXvYqztxhuL0SbDbz8vPIEpjg5swquwVED7MQQUtvXwCf8LmsIfLWHOThEiOBoLm/Omt/wkMP0pWw==
X-Received: by 2002:adf:ce82:: with SMTP id r2mr44441848wrn.223.1564429244726; 
 Mon, 29 Jul 2019 12:40:44 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id v16sm46139077wrn.28.2019.07.29.12.40.43
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 12:40:43 -0700 (PDT)
Subject: Re: [RFC PATCH 15/16] RISC-V: KVM: Add SBI v0.1 support
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-16-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <b461c82f-960a-306e-b76b-f2c329cabf21@redhat.com>
Date: Mon, 29 Jul 2019 21:40:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-16-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_124046_526936_7142C074 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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

On 29/07/19 13:57, Anup Patel wrote:
> +	csr_write(CSR_HSTATUS, vcpu->arch.guest_context.hstatus | HSTATUS_SPRV);
> +	csr_write(CSR_SSTATUS, vcpu->arch.guest_context.sstatus);
> +	val = *addr;

What happens if this load faults?

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
