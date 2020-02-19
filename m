Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46419163FB0
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 09:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iBiYQC8M9ymGiegkopRwji5qFDJJG690doCVk2tdx18=; b=WKzQjVTK5XOBhAWIX3EChp52R
	HYLawM8nkHTlPIkF+UVp6pVgsW/EkulvdU+hawFfKymS79z0CgtFwgRL9LV5DLHEXU3h+dEGCjfkO
	8eRbka+Ta/JkiGV7GdXlE+PwSeWcv2DPyz9rLXPos2mwp1gQ/aemjMf3k6+zzBA/kSe50ANaM2QNG
	4eDYf3JrOhqW+E3Yc4gIUGy4G6Gp/S5rRDJExnrAUEQ9fP/8KKMqnd+0rKVV6s6DTW24eczk8+XRH
	KpH4tKZA0BrE8QBg9Rv8bJs/SIcL4FBR6ykvpcwffpxkr0ijPPU7JU9m4YEMSLPWKiDL0GYzI+8yD
	3MAMvdU3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4L4N-0006G7-5a; Wed, 19 Feb 2020 08:50:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4L3n-0005fl-8b
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 08:50:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id s10so5512341wmh.3
 for <linux-riscv@lists.infradead.org>; Wed, 19 Feb 2020 00:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iBiYQC8M9ymGiegkopRwji5qFDJJG690doCVk2tdx18=;
 b=gKZfe2wMBHfwx/ZnbSf1p0XlL7p3iCmUo9I/qUFhJom/XZc9yVZqSfNMe7hrdNVuOW
 PtmhSgeL5tYYWKWfV0cu3PypWXVMbsf/W4Pt6c2jq6CzLQ1fb/JdfqiZTjmsUdlAZ/n1
 9htfrFfPqy3Ol9lSm8C631cBJwD7AItkX+sGVwFHn1DjI6r1XamJEaQYl/m9YrLM1kaB
 Jt4hsw0dEuvIhK7w6uCiNBwbDgIxB1T0s9qzjBbh/5aOXuobep6y5J5iT6ZdAEE8xuxf
 6JxpiuBjXa8bt8bwg3yrOKDi58rksd2yRm4wUON/hr7mRzs/iNVoRqWVDldqSjnY1fjM
 qT7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iBiYQC8M9ymGiegkopRwji5qFDJJG690doCVk2tdx18=;
 b=l7MfGSsXEj3r7YjdYELvzzQWa/Z7gAErGhS+uaQO1MQma5PWzcEGfQWfRQYTU/rxfl
 X5CDPy6410GdbJEE1E64LWYxDIYDI/+xNmHbUQfgej1hek1b4VvQAiq125lvp81MbJrg
 tTmhz3/vZKtsmTWLUv8+WPDFeno6TTlKZx2qoVhgPNanQVCC3GbFo4ZPC3miQnDokbXL
 AGsHZI13B90P260yhyrZiehnvpOHe8CV2SBKQzepp8UESfCL/oTTcsxTI3143Ck5nMvu
 fX6+MvedF8X5qD+wYFScFrIEn+3H15f+FCfmaSAKVy5X8HC6O+58Wa1RaYViD3wlYj+s
 koGw==
X-Gm-Message-State: APjAAAVTDhaf1ikGVwZZAyb24ER8p3wPbX5yE8wzSCN28kKR5UQ7f7y2
 Eh7o7woG9LIud6G+G7cAlMs=
X-Google-Smtp-Source: APXvYqxgT7hcRCElP13oDRyXm/zJh6PBDq8H2bcwYmvAwwP1MYkqtIzYdJnc+hzFT6p3jMvUFS0NgA==
X-Received: by 2002:a1c:1b93:: with SMTP id b141mr8991436wmb.114.1582102220179; 
 Wed, 19 Feb 2020 00:50:20 -0800 (PST)
Received: from aurora.visucore.com (92-110-144-95.cable.dynamic.v4.ziggo.nl.
 [92.110.144.95])
 by smtp.gmail.com with ESMTPSA id q14sm1963853wrj.81.2020.02.19.00.50.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Feb 2020 00:50:19 -0800 (PST)
Date: Wed, 19 Feb 2020 09:50:17 +0100
From: "Wladimir J. van der Laan" <laanwj@gmail.com>
To: Sean Anderson <seanga2@gmail.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Message-ID: <20200219085017.qpfyvmzfz27fojzl@aurora.visucore.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
 <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
 <19e78a77-4b7f-a057-eb6e-7384f3fc67c1@gmail.com>
 <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
 <8108cb8e-a909-24b0-f1c4-24a5bebf4e65@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8108cb8e-a909-24b0-f1c4-24a5bebf4e65@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_005023_475405_E9151FFE 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [laanwj[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Anup Patel <Anup.Patel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


> > Wladimir (don't know his email) started playing with UART1 interface
> > to the 8285 module to allow WiFi communication. We thought about
> > having a TUN/TAP interface over it to bring the TCP/IP stack up.
> > https://twitter.com/orionwl/status/1229442145628585990
> 
> Nice. I don't think too many raw register pokes should be needed,
> because you are just using a uart to communicate...

The reason I needed any raw register pokes at all is because I don't have a sysctl / fpioa driver, and didn't
feel like writing one at this time, so just write the appropriate values to the registers to map the UART1 to the
correct pins and enable WIFI_EN. After setting up those, Linux's driver works as-is for the UART!

Wladimir

