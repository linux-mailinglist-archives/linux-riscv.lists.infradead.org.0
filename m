Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EDEB799B
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 14:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oq+2nK62yXAt0ZIB8vckHsygria928uquh/USMCCb8=; b=L5IFIzo+VWbOlM
	GnsBOyEUCnSQuNYp3KFCxNrUBkUzREn5h6CsdaSJjZQFdu2SML9psFPlbyXwQZnixCkBmiMVUN3tn
	hG40q42EDaJSl+rY6i6ungOHr1rjarEv1T/MNfLOIG3uKR/5peDLgNevxMy2KCFuH5mp1m55boABv
	3+EniDSeJhHk0mDwv/dgb7yLDUDaePooSHZMHKwkdm2vaq/cBHIJXJ2mhlt9qknxIBKlwP+T+/HiT
	4IreqFegPCjopcI9ktgSNlMljxd1EK4PjG+hH+wWeXeDYYgb2ksQMHqbDCtT+OWBqkfpf/6pDTH07
	XIq/afcgyS/cl1liP2Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvgv-0007qm-JS; Thu, 19 Sep 2019 12:37:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvgo-0007pv-Iv
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 12:37:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id q17so2907540wrx.10
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 05:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Vmayzz5+9ezfsk62AunM7OhcuY1qbK/2my5of3osq2Q=;
 b=CPHzlLRpy1PttVfVK/tH5zuY0rcu5yRxCiJbqcJKiYlnzZXjMsZi9zST57LCLED/D+
 RG6u7EiJSBX6YS2c+J2cfjL3+R9aiaw83XBaLMWlLITxRCATd2tPmtBUtirokGJfA+wh
 tLvC9ZVf5XtA5QU/GxpW4gUZMjUsH0SVrI2BfBO2W0AVE26CknDVIhQ3scsfUVZ6Vuqp
 i7whe6a8HxL52j44c5FBoUtntCnpvvAdRumpS8tg9uyKGR8k30X02mG2RBhMMXzLzj8j
 d2oyyoBmC813K/tvFhuvjcYzMwQImmdEm75oMVLYPpG2hTPqTYl0RfwgqRJrO4t37jQZ
 bhgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Vmayzz5+9ezfsk62AunM7OhcuY1qbK/2my5of3osq2Q=;
 b=gRh6R1qE960Wl5+dxGFxHtODdZQtGFlWPNWukD7KblFTskfVBLNzecxjD8JGyjrjoL
 ZYWpfMtIK1+EZMd6IVO5fjJy49B9sw13IFI/Nf6Dxwf5W+jmRjsS7yV5f0vc/33PkBnn
 9ertKUOpw7xcZ+Z/XVh7SxRyrEHmvkwk10WoLI4fNnN3Cdd31jhwjDAlUZiE45S3WM69
 HHdcta9R3PBysVkmgj7Msr5b/9hHfOCmPEmbxhbz3vpA4pIXR98urBpqm8Qg9KfMaa7b
 uAto34Y6nJ8zKcQcKgjCvpEOeiGAe5lByc4CwNr6PnPh0el4j2j/RDk9xekuOY+TiKTZ
 /EwQ==
X-Gm-Message-State: APjAAAVUwfmbiapb+5E6EC5aRUupk42+ekvtyoLqsPJa2nlDGWx5d6zn
 LTbtKlWqWiPdqL+ypbb9Mp0Qrw==
X-Google-Smtp-Source: APXvYqy5AC/9imlDM23EMdY0qHqq/72VZqirSAcl6mbLggKWnGuZppcMG1fhJLwGcSfA4ItZqkmh2A==
X-Received: by 2002:a5d:4444:: with SMTP id x4mr7022305wrr.11.1568896657158;
 Thu, 19 Sep 2019 05:37:37 -0700 (PDT)
Received: from localhost ([109.190.253.11])
 by smtp.gmail.com with ESMTPSA id z3sm4117140wma.29.2019.09.19.05.37.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 05:37:36 -0700 (PDT)
Date: Thu, 19 Sep 2019 05:37:34 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v7 01/21] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG
 interface
In-Reply-To: <20190904161245.111924-2-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1909190537250.12151@viisi.sifive.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-2-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_053738_646282_0556E129 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

> We will be using ONE_REG interface accessing VCPU registers from
> user-space hence we add KVM_REG_RISCV for RISC-V VCPU registers.
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
