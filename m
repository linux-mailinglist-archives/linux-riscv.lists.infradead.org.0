Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA66E7C30
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 23:12:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXKxaqB+0dbfbWcyt4wHyR4US3+enwWUuANcBZC6iNo=; b=f61U7kWhPCWUuQ
	4fRVkg/5rLa8jB7k3HZvMQGZ9KpDgRiCXcpxZluKPdiz6W4vg1qBeqLwIjOGRpr9ISrRraNTNdLZR
	eVPCu1jv+LVknQ8jmnGRaHJHoI8OwN2sAZ6aT5fefWxH3G7xxfc+FjldYrfQlFj//GcxF/n2xgC0I
	/O3LqU7u59/hVDIFSJz9FZS1D1Qx8IHKgzm8KWKV6pCMIFLQQO25Y9HSWrqeZhwt0iHpfVDOeYUp0
	Y9iwZHW/8ERXpTbNcOUJvIn62N0ZiGONwCDQaqxjNUhVHhI/Ypdil8iRoFijEg65XVKLa2A/Np4H0
	m2aUiIc9JuZwX9K9kC8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPDF1-0001LR-B9; Mon, 28 Oct 2019 22:11:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPDEx-0001L4-Qs
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 22:11:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id v3so642989wmh.1
 for <linux-riscv@lists.infradead.org>; Mon, 28 Oct 2019 15:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YjMWv87Txz8ruISksDEwTY/yiCDggkCZffCKhGJVPqo=;
 b=a6WH1c4A3Zp2KbScjqDYgpeYNoumQEFfWVGo6UgRuVMOiL5sHK7jRmR5ZDlTNjSmre
 t1+uA2Lv1NWloGTHH5bAooKYLv85rP6Gj+xTMT45L9dh1NeWI+ZJcGTfnIxtFvWFtsaI
 QnZUQ3HI1FUHsnAtB5zaLSINszDZgYfP+TR8dRx1LpN3DGxMoIVLVZBMzb+vk6/A1rb8
 nBr9Hn6+6Fj/D8baXWVHftCCzOX7+lZCHwhnNGbLK7ActolTE8p4ZEVjRkdMO6+DjhBK
 WTiijBceKnhXmwUlyLQ3zYxsW1GB3Thr6s5EoPDAXEMIqDZ0tEDYtz/lcVIUrnkltqnX
 Cw8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YjMWv87Txz8ruISksDEwTY/yiCDggkCZffCKhGJVPqo=;
 b=dK4j48I3x6A6jO2HrJzVUkg4pG9IoULR6myJTtCSH+WMA4nSW3NyNIuvqLx/xJo6r0
 HyF6LAG6NYDFIYZvX7zQfYJxbQe7LALFGGLCtXC49eDH8d0LuYzM9tekELIZbC4m4Gj0
 kuecl3QGMxsd+QwKjLk8CvPXkgYq2AOfGVTj0Lj21PxQJ8jOds97uMDKyI3pRms2qTyw
 3Kkmrvmj2Y7ub2cKglkpHhwF1R/cI3IH5q85RXy9otRj7rxYuES8C1r/gsKNNuhjCXbY
 EhGtr8iKHBLePwzaNKF/6yYwznIpoVDLGJsDTeRFGMpNjnUlNXeDxUJVxHqLC/X24AU6
 cOGw==
X-Gm-Message-State: APjAAAWcdIYPS+Xb2WslRft3fXTiiHwa8+NOIBx79u0LMW/PGnEvz2oG
 knp/BuAaWdaMskgnZA7uNSg=
X-Google-Smtp-Source: APXvYqxVhyqboSyYmsgvo32+aV4wHUK0cx8Hd7TlVaxn75jcJJUtRP9dEehXjF3+7RcW6VFNqRPZIQ==
X-Received: by 2002:a1c:7311:: with SMTP id d17mr1159537wmb.49.1572300714030; 
 Mon, 28 Oct 2019 15:11:54 -0700 (PDT)
Received: from desk.local ([2a02:a03f:40ac:ce00:6dcd:e18f:2cd1:7611])
 by smtp.gmail.com with ESMTPSA id r1sm12939065wrw.60.2019.10.28.15.11.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 15:11:53 -0700 (PDT)
Date: Mon, 28 Oct 2019 23:11:52 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 4/8] riscv: ensure RISC-V C model definitions are passed
 to static analyzers
Message-ID: <20191028221151.bpbp27x6xeotbvm5@desk.local>
References: <alpine.DEB.2.21.9999.1910172138320.3026@viisi.sifive.com>
 <mhng-8e06672c-a3e1-4dde-bbe9-ba1d8ab79645@palmer-si-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-8e06672c-a3e1-4dde-bbe9-ba1d8ab79645@palmer-si-x1e>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_151155_896044_F8E80412 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, linux-sparse@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 08:09:59AM -0700, Palmer Dabbelt wrote:
> 
> It's probably worth going through all our argument-dependent builtin
> definitions at the same time.  They're generated by
> riscv_cpu_cpp_builtins():
> https://github.com/gcc-mirror/gcc/blob/master/gcc/config/riscv/riscv-c.c#L35

Yes, I agree.
However, these are higly dependent on parsing -march and this is quite
arch-specific which sparse is not really needed for.

I'll add some infrastructure for this in the followings weeks.

-- Luc

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
