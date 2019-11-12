Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AFBF99CF
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 20:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDeKRWpc3jV9FuC5Y6ER9btWK/41At9sFag3RqCJ3qQ=; b=C/3nWIU2bcs+3m
	LGKCWNUPP3dz4JYb3ORKxvu/PqGS6iLq5FteuAgJiGJ4ahKHNp8spdtwzW9f2i2Vx4gu4ci8V6/a2
	IHmv1XRbU4WClBNauTry2QN26g65JMTP409wBeuCRyWV31C6fBKk+dfcFW3xzllMnPj6ZwMe6WmZO
	1ZkBYSOOmU1BE8gVA6BdAwE5J7RNzO8ViaYnzlXKKx/RZkHwOR4lupNHM7qs+jjUHvIgMaiPl5XqS
	SZdeJFKUnF/Cy9G4lzW5h1VGNYQaXRawaP8+jqeUZtpsteyrMoL2pRkw5q76tM7k9KuJNEUJ95Z9j
	CznGfRlEi90fG37MBX0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUbwk-0002oA-UD; Tue, 12 Nov 2019 19:35:26 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUbwi-0002ns-Bx
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 19:35:25 +0000
Received: by mail-io1-xd44.google.com with SMTP id k1so20078839ioj.6
 for <linux-riscv@lists.infradead.org>; Tue, 12 Nov 2019 11:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=m93e2QXWf88AbXgWK2sEQ2l6gtvzuuGFmNQYaUWfXNg=;
 b=l52eleMCbJB3sqImSHB8+0rROJ34XYVb9aJgBXvlp6QavrLjYHPmW5TCty9yBkePtN
 EDB0Dr1uH1LOFEhzd0Z4Aqh9qCU/FlL/oLfxBKT5oYfmiVRp8/XJWwlRkoTKndGbsrBY
 EpKayEbLj5l8PH9WKNZA/fqty+eg1E3a6W9aiqotpZcrNA9RCGYML2QL9K2v+qoy7H3X
 KGaZXebb/I8WpzwthYbpol7tqzklks6HuKEott00HXMkKxSkfnQIJEkO+9rOl7hCtHYX
 1f07gXdeoxSzuv5JPivm5CklpoOAkXoVq9sDFyhJVhOLvBJ6Ns+Ge+i8OkDpQIY/7Veb
 tYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=m93e2QXWf88AbXgWK2sEQ2l6gtvzuuGFmNQYaUWfXNg=;
 b=eX9Kg8ZkdUR158FfXplLJGF9FKfhmjZybg+3Nzv7AhjJigBQvIe+tQ7+w5CMrutZKq
 ATYC8M+9z0NArGKdywaJfASUhA/W28+yYyqLWy8Zo1mx1Fg9hqlFRnwi/Ml0NPlk7yzW
 4sqpKnr/OQuKc6spNeXy3jI9zhaJKvf4wQbNIU+kZrpsrE4+20VAUAiX63pTWNMjfdt3
 Rt+zFY/FsQiFpK+fRagNhwsGUkhYO9wopoLxx06J5tAhhT1+aULCJcQFIfAilwWYQmWg
 7J0GVpqZ30dK9G8xfObLRldGcdL5snf1MtTY3nIVCRseCml+B8X6hGwEqC26ldjqcvN4
 vTKA==
X-Gm-Message-State: APjAAAV7sBDepV/H7lh/dVyuQ3heJ2LAvgV3HHXZl0yQBJJIjtbQHBbB
 MVnKDlxBHV5uTbLWdjdbLFZBsA==
X-Google-Smtp-Source: APXvYqzpmUsR0xh7kS0qo4ZEyUZIBFnS7WPJ+sDXJX2PPlPUcSH60/M0y1Ik8F4kBklzWWHcXDzpcA==
X-Received: by 2002:a5e:8202:: with SMTP id l2mr10041486iom.207.1573587322864; 
 Tue, 12 Nov 2019 11:35:22 -0800 (PST)
Received: from localhost ([75.104.69.238])
 by smtp.gmail.com with ESMTPSA id t6sm1235747ilq.53.2019.11.12.11.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 11:35:22 -0800 (PST)
Date: Tue, 12 Nov 2019 11:35:14 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH] RISC-V: Add multiple compression image format.
In-Reply-To: <20191106000652.8370-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1911121135020.32590@viisi.sifive.com>
References: <20191106000652.8370-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_113524_437173_ADDAD46B 
X-CRM114-Status: UNSURE (   7.48  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 5 Nov 2019, Atish Patra wrote:

> Currently, there is only support for .gz compression type
> for generating kernel Image.
> 
> Add support for other compression methods(lzma, lz4, lzo, bzip2)
> that helps in generating a even smaller kernel image. Image.gz
> will still be the default compressed image.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Thanks, queued for v5.5-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
