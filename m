Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E457595B
	for <lists+linux-riscv@lfdr.de>; Thu, 25 Jul 2019 23:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kK3N2+cwaCnOFhyNX4a+eKFFX8OsuF6SJxCYCV9bQZU=; b=EjACzktZbnNMBc
	HpCKTDICuHnvB7dk0i6GJNBjIaDNRU56navsbp8WQvBMliLT5LBO/8t5r2S4q/q37dJFNQIt9nOYG
	5C3UQFMxP4vtXzQACVleZTfi/2XeV2sCr8Skof3OvaRsq+5I4OoAhfpboazKWlmoeOp+y85LqWfrF
	9h6butrpkL6UI++7CFHohDNsSEIJofSPiORmWiV8lCjP4ADmVf1snULr7bvNvBqjMxB8mY9oR3X2D
	5nZnmnc3kvuOQ2t5Ix29DmKo7E434hyysGUBGqNlxKKg2PVVeb1gTHJjdnBLXKbgGH41MSNfJ9bG3
	RHfP5RdZcKTh+ycaZ7bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hql1l-0005TH-Nx; Thu, 25 Jul 2019 21:11:53 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hql1h-0005SB-Bs
 for linux-riscv@lists.infradead.org; Thu, 25 Jul 2019 21:11:50 +0000
Received: by mail-io1-xd44.google.com with SMTP id j5so96150688ioj.8
 for <linux-riscv@lists.infradead.org>; Thu, 25 Jul 2019 14:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=dA9BWec89vDrK4sNwuycmJwH0QLl3t9FK5TEZwiOlSU=;
 b=TZ8vM0VHcO0hC55LMc+PM7ql22DZmj9+opwNwcn0uPnwHfyCTj6D7L+c0UCZiszL3F
 hSpHPzTYLOYZ137GsFPRN3P/GOwdccByQQA5Jgcjh4hdxqIqhMV/vL4W2zxaFW5hWpmt
 lRiZug2LQ+6xgg2GJ4DJH8f8SrkI2bxfdyXHGkzJ+VRDhQUTT5TS1N+B2SyYHJyeoG1V
 pYubbIxifUk+pCRunevKjHUjtxE2fjsrpy5aNwxUuAPt0VWdO3poK/tio9ULHSrjrnh+
 AjRG8zwq/21utx5EH1vuZU7wvi9dPS2onrI5+9IMy5rj6qdRV5KCl+SxJJn6xSAq6aXW
 h2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=dA9BWec89vDrK4sNwuycmJwH0QLl3t9FK5TEZwiOlSU=;
 b=Po3EPMYjIDJlkDaL6j7nrggnLX/BuuSTrlPQxwhzfaxN2WgfkQHU91wgEXzhj9Al+M
 c3go95qTX3m7ZlsY3HvJbU62OoX6cFsfhSQ7ZxU7eOpuKX6jlUsHM9mXTYFZZEfSrgyq
 RkCq3/zg/N45uust5hIUQfEjYQF6v74zLxvTBW+LC0Tqq2zVdfdZD8pv0zyMCHzr4+z3
 lEen/7HlSex9zH6CmjngL5HxvpP9Tp97cbSM1csH0lUMQW/DlDBAelwKF4cz4yjwjm04
 pAvqPzSJnO+kACB/a+FEO+801AColhUoLA/qdYT5Pg6Oz2BClfc3flsxHcrj+iKcPZ/p
 HFzQ==
X-Gm-Message-State: APjAAAWFcnqgGvNwOKTq+rtZE99cL6gOvanOHgQugyneLMGq04DidWXT
 AHFNhDM5p2sULbkvHlW0j25DtQ==
X-Google-Smtp-Source: APXvYqxce7dOtti9WfwqIwfsDwFKgGFk3PvnUeyVSm1YUvuoCwWcdCFYsqk07eOVXB7qXsh69w9J4g==
X-Received: by 2002:a5d:9ad6:: with SMTP id x22mr56002184ion.136.1564089107990; 
 Thu, 25 Jul 2019 14:11:47 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id d25sm40678729iom.52.2019.07.25.14.11.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 14:11:47 -0700 (PDT)
Date: Thu, 25 Jul 2019 14:11:46 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Mao Han <han_mao@c-sky.com>
Subject: Re: [PATCH 1/1] riscv: Fix perf record without libelf support
In-Reply-To: <96b979a523210628de8a8a3d6e48492f6f1ff02d.1562812381.git.han_mao@c-sky.com>
Message-ID: <alpine.DEB.2.21.9999.1907251410240.32766@viisi.sifive.com>
References: <96b979a523210628de8a8a3d6e48492f6f1ff02d.1562812381.git.han_mao@c-sky.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_141149_466007_2DC94241 
X-CRM114-Status: UNSURE (   8.98  )
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 11 Jul 2019, Mao Han wrote:

> This patch fix following perf record error by linking vdso.so with
> build id.
> 
> perf.data      perf.data.old
> [ perf record: Woken up 1 times to write data ]
> free(): double free detected in tcache 2
> Aborted
> 
> perf record use filename__read_build_id(util/symbol-minimal.c) to get
> build id when libelf is not supported. When vdso.so is linked without
> build id, the section size of PT_NOTE will be zero, buf size will
> realloc to zero and cause memory corruption.
> 
> Signed-off-by: Mao Han <han_mao@c-sky.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>

Thanks, queued for v5.3-rc.

Also: thanks for your patience on the perf callchain patches.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
