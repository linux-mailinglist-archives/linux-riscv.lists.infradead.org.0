Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3C6E5089
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 17:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zidUNaJNzJSL52lRgqMTtODCuvhxr9pIc7jcweHr+g=; b=XbOmWw1P3nKpEu
	blGXTJp/wSHngKJCN60M+2HrhjmjWNzzmIPzjzWd0OcGIsVylg9MNQtzA8jE7UVA8Gs3iIHCe2Mu+
	WUU75VyFT0MhBIEIwfrJZxWJg2I5oeagboVSMr+Vv93xgVYIimfw5qk1aSrfpBma2bAcNrL5phKNl
	CT+aiVqOI8Hh8eCB2Ta5tQWtusLt7Jw3+bDfQeQC72XiQz6EYRPGBPG5HKLqVVZERc7oGpyktVSuB
	oS3liXm4ZbXGXCWCP/CQ1RQrnNO24wVYIwPtpmvigcXCALVypZckAc/VAle7q+9cwi1SxGHMUDMWJ
	N2Q+nGz+m/jEiO3aCkIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO1u4-0003CM-3P; Fri, 25 Oct 2019 15:53:28 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1u0-0003C1-P0
 for linux-riscv@lists.infradead.org; Fri, 25 Oct 2019 15:53:26 +0000
Received: by mail-io1-xd44.google.com with SMTP id 1so2976774iou.4
 for <linux-riscv@lists.infradead.org>; Fri, 25 Oct 2019 08:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=BTCG2yDYkKpAkRxeGSjbivKMcUqz/dGEfEhScgVd6MY=;
 b=LOsYNFJ30GiYM0TVbIi0pCwCvywaMwemc8XsosqG8jQA2FDGLXmQCVlCHJvQN9NVCc
 38O7VnvVlV5Rhho6slDLFCKcj2PUM3nVSu38Z54JoM9bwlEehv8aG3l/YrI7ljI/H233
 t9LeZgYAKOqp9yl1JhH9vhR98y05l1Bgj/9RmdYUSy1K3Eizn0odTPD4HElXRDwW+zqa
 SbHUIwco2X/FvPXJPWNhZKS6+781cXqUP3IwB3C+X4AocW4H1Q3vF2qktYUZx+cdaexg
 a2C0S8r74ZMyiDS3299MKx7SHy122W9AkKY5QKp5mCrmhKUYYiZQGM6dcGcrnRQ4vjwV
 96Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=BTCG2yDYkKpAkRxeGSjbivKMcUqz/dGEfEhScgVd6MY=;
 b=qP5r2cnPf0b8DijDptNSK1eUoDwekwbiwFiC2YO1nXVLQVOH2wMCuq4U38xkX0S3Ip
 cDwOvCeS6/azpgDfU49oOk5k/ut4GVolKwRgv1QgE0uPEjz7YLi5Yxh1XB0Ban7azsIZ
 ioezQbWjDq9D81ZZvqatJ/pkOywgIB4lwckdIRUGnZZnCA9jLwOl+rPtPp5G2bAwFUht
 UPaUfUGw/g4Xc2F41FCQysnwmmFm8JVRaI0MAyW9CixEv+qGW5T7yX7NMgr5NmL1Uwq5
 V9ENeLyVM4o+unZssdwSs0IPFvMAQzuWiRykOm73GZy/IWV1KKXcKnfiDYoD2eX2ysj1
 CMKQ==
X-Gm-Message-State: APjAAAV1pxWNDkhJSxdtDdroKlugZMfFYGxF0SONe+Gy05jfqanvv4YR
 nIgD1E/a6Zy4OgvDOKNw8YHMVQ==
X-Google-Smtp-Source: APXvYqyRv4NFbYB61iRVAes1oYhBMfB6E/EnuYSHHEoiWYs7t/2gjTWcjGIdGdbuzeRDIP+hxK08Dw==
X-Received: by 2002:a02:6508:: with SMTP id u8mr4734969jab.28.1572018802766;
 Fri, 25 Oct 2019 08:53:22 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id t9sm308318ios.66.2019.10.25.08.53.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 08:53:22 -0700 (PDT)
Date: Fri, 25 Oct 2019 08:53:19 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2] RISC-V: Add PCIe I/O BAR memory mapping
In-Reply-To: <1571992163-6811-1-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1910250852420.28076@viisi.sifive.com>
References: <1571992163-6811-1-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_085324_840890_FDCBCB20 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sorear2@gmail.com" <sorear2@gmail.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alex@ghiti.fr" <alex@ghiti.fr>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "Palmer Dabbelt \( Sifive\)" <palmer@g.sifive.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@g.sifive.com>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "logang@deltatee.com" <logang@deltatee.com>,
 Greentime Hu <greentime.hu@g.sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 25 Oct 2019, Yash Shah wrote:

> For legacy I/O BARs (non-MMIO BARs) to work correctly on RISC-V Linux,
> we need to establish a reserved memory region for them, so that drivers
> that wish to use the legacy I/O BARs can issue reads and writes against
> a memory region that is mapped to the host PCIe controller's I/O BAR
> mapping.
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Thanks.  And just to confirm: this is a fix, right?  Without this patch, 
legacy PCIe I/O resources won't be accessible on RISC-V?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
