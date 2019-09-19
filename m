Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DBDB7476
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 09:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6whwKVo4UZ8Bv/R5o601cu+2qVhnmvEda8Ia5kCZFwY=; b=ezJehx1f270l8Z
	JtXS8wFRpP4NxJs2PqNTds7UJmiiYAGgOHJY0HUAoC5jP7kl/tBkF0rLT9qKEr1CuMBAEcesgnx5J
	ChKcMtfdAJaKKXtAzI+JUmYxX0t+98Yp6rkoYuP3hUkecq53BH+8QGLwjZ+wOrgR4ZLVeNDvV97ze
	bIjkJGCOF7JD2NPRNIKZCW7dR5mzmm9v5ZGgUkZST3ANKrMXI62Y/3K7fDhRrPVrjJTQOpO+gPbaN
	JTwY9uNp5PU7GBX+/a0sMyigbaOYsBXYbzjVuWH471uuWzSGoizV1HmUUZcKgnvDBG9fPLxDO41GH
	Sfx/GGe/Mg+e0cMhcnRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArHR-0001pw-Q9; Thu, 19 Sep 2019 07:55:10 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArH1-0001ob-Jj
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 07:54:49 +0000
Received: by mail-pg1-x542.google.com with SMTP id c17so1411235pgg.4
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 00:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=lgSTmC+c9Vj9bE5WscDijHkLpjdSHeo7iIoLFicI/Ow=;
 b=Z1jp9KabrnEgSNSQRJQKgxItKQkZ0/OIvbBIwjm00LGww/v2HjW0V63QhVE7ZwlBRX
 +EObeLsxlxsluz6Sztq/BAUExQKy43X15vIHT9Al+hEqIfpISO5p9SMCxb3WLR0f2Jo2
 cU6EObsPrgdOMm7vdyGLMl0QOluFlRfJewkDMd4XNSb9+nwZ3pDJZ83w/oDnNprGQir1
 /zOdCpNfrZTXVAGpDZRkz1HrDawz8qteJV+6JHcuAsFz8hGTRZbfSg7WwHsDiG2IW0d8
 ioRL7h9rj5wweNHTpuBRtn3TyozMsEyHRxgIEkkCF1BaBrkNpcdoH5yQFM6Qd78DA4vo
 /QEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=lgSTmC+c9Vj9bE5WscDijHkLpjdSHeo7iIoLFicI/Ow=;
 b=YD6Cwch35E4fI3aUJW7c2OTXbjlZsxtzNvA7UGpv4bhVImghirGndslk7cwE/EWt96
 YKYn1EkylTr4TpvkGB2Qn5SQrghpXr9HF6tRISaCBSE68I1aUplHwEumlNBGleKQ+d/J
 V8LjPQgXzaVqGpZbAgs8VqP+nOwDgzFTpI3S2aLIP6+Q9rAVaU38Sh3y/CB6+mWJ8SbF
 Lj6UOrHL0N0PlsKnaNtmTpngybWYTj1mnbMAqjYY/i26vMF/easFF0WaK7lOdip5KK+7
 mW0MW2jrrfWmFQ/lzY7mu/9qfFz/ntJIqdPgTtpAbGJ6nwNu5W3LDf1yY154IzNL6x4H
 cgDw==
X-Gm-Message-State: APjAAAV+8I0vQ8o9JujebNI4tv3+3ciXnRXMsytKZB5tIhh2IkjHt2qU
 zqgZoSSFEPy7WF319fVaj4Dzxw==
X-Google-Smtp-Source: APXvYqyZ1YfxJWZc/POGGnlnuSTSDOy5NhfymPV72q6hKL8KbUZaRUFsYbqH+mFYjWl6fs6PCi1YJA==
X-Received: by 2002:a62:1888:: with SMTP id 130mr8993763pfy.72.1568879682508; 
 Thu, 19 Sep 2019 00:54:42 -0700 (PDT)
Received: from localhost (57.sub-174-194-139.myvzw.com. [174.194.139.57])
 by smtp.gmail.com with ESMTPSA id z12sm14193738pfj.41.2019.09.19.00.54.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 00:54:42 -0700 (PDT)
Date: Thu, 19 Sep 2019 00:54:38 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v7 20/21] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
In-Reply-To: <20190904161245.111924-22-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1909190054230.28444@viisi.sifive.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-22-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_005444_300492_0B3610EE 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 4 Sep 2019, Anup Patel wrote:

> This patch enables more VIRTIO drivers (such as console, rpmsg, 9p,
> rng, etc.) which are usable on KVM RISC-V Guest and Xvisor RISC-V
> Guest.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Alexander Graf <graf@amazon.com>

Thanks, queued for v5.4-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
