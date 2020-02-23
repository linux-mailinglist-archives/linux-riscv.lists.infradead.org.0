Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAA01698CB
	for <lists+linux-riscv@lfdr.de>; Sun, 23 Feb 2020 18:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7SmTtNPBn2T+cb23Q+tOWXTb1iD23pHN7RwXvfrkL9o=; b=g9OWYdiRKT0W6zQiK2O1+0AMP
	q0UDMvjLreQDZpKYV2XtTTvH6yQTmLJ5WsFZ+IPNrIdVxOZITtxO82CDqmvp406tOfkMyZW0Emxbo
	0+kars3X35TuunVz4bgsfdh0u0i6MDxnsup5os4kdtrbP7vx0ljLvOlTwL7AKms+5P3lJPy5uiHBE
	dIZZsupZMCQ2hItS0igCuH8rPa9/97rcii/uJOE2i20+TOzg4f6BGrn1jlQRBiWgYxFGM17iTO/YV
	b33x1lMfbFMRZqp9/1oo5fU89L7/GQHKNhEkw6e1q55tzLjxvZ6TkIPFFW+cx+MzK3B1+sGfMZAWD
	a7MneAymQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5utG-0003dC-KF; Sun, 23 Feb 2020 17:18:02 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5utD-0003ct-I8
 for linux-riscv@lists.infradead.org; Sun, 23 Feb 2020 17:18:00 +0000
Received: by mail-il1-x142.google.com with SMTP id s85so5770741ill.11
 for <linux-riscv@lists.infradead.org>; Sun, 23 Feb 2020 09:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho-ws.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7SmTtNPBn2T+cb23Q+tOWXTb1iD23pHN7RwXvfrkL9o=;
 b=ZnXU0AiYUqDbHSfyrXM/7uT2bHICmi3a4U4nFQldVTYotEN+5e57QiIPpx2j2zSfOD
 3zHezfkmTwch9bXv9L7qNVZUISXIL0ZasnOGiPhmqKXqeiIVBh77ikdN889zLXA/s20t
 kIe3/boDVkpoKbgdUfDmkRZ+yGN7pFsLsC7uPiX5c6B+IT72iz4zcMTO2mqIXA6QSpG0
 3IzPiqyfGN/L0Zek8hJCWHEYpx2GRaDD6PYYsl7XSj9fzpSniygzvpB35hW3mOvkoSUQ
 R3ro9r1cbIxool1PKW0MSGoomdwH8lDS3G2/ySGB76ZVesjXakuXvUgH4TbBHPkGAURr
 ZpjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7SmTtNPBn2T+cb23Q+tOWXTb1iD23pHN7RwXvfrkL9o=;
 b=rVY884Kbb3xita1ph8z2A5o7ehip3CmNzfjSaTIO/zR19TFZHmPHUm4ICIFQOVmrf6
 3Taocy/u8zkQRGqXlTQaMjbrfYAmQmoW04NG/0G/kQAkX/zYtkmKZPOhNFaJfGSOhiW4
 w09Pchia+pfoBU7iojwJbhH6QdTf/yInIp4Zzt/B6U21uyW3824eafVNALZlbMqsgcsW
 3ytGt7Jb9/7kVNnwB2IdZTjRJ4FzR/N50W2rfEff31ovz94BbesR+ZkJFPIwCCozr5ao
 Af11jUtQOUzgaRuFlmbAF+Waa9TmRY38KICd/LNbI1iGHBR9HQmALbhUdlP7EX3TXO43
 8A+g==
X-Gm-Message-State: APjAAAWol/nqYj52mDIzlzWrPSu4hmWtaGEGTqg2SGcGH34a7IiDJJCa
 mjGBgikRR139iBp4RXVU0U5WGg==
X-Google-Smtp-Source: APXvYqw63W2EK7XZYK5s2ZWoKQ8ad6sFR+En3xfuokU2Dmq5tIeMmY7/FNGj8fKk5l4fl6ybs2iYuw==
X-Received: by 2002:a92:9a47:: with SMTP id t68mr50874060ili.155.1582478278014; 
 Sun, 23 Feb 2020 09:17:58 -0800 (PST)
Received: from cisco ([2601:282:902:b340:8001:28d8:b4a3:8673])
 by smtp.gmail.com with ESMTPSA id q1sm2430745iog.8.2020.02.23.09.17.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Feb 2020 09:17:57 -0800 (PST)
Date: Sun, 23 Feb 2020 10:17:57 -0700
From: Tycho Andersen <tycho@tycho.ws>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH] riscv: fix seccomp reject syscall code path
Message-ID: <20200223171757.GB22040@cisco>
References: <20200208151817.12383-1-tycho@tycho.ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200208151817.12383-1-tycho@tycho.ws>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_091759_743323_38E9BB02 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andy Lutomirski <luto@amacapital.net>, Oleg Nesterov <oleg@redhat.com>,
 Kees Cook <keescook@chromium.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Feb 08, 2020 at 08:18:17AM -0700, Tycho Andersen wrote:
> ...

Ping, any risc-v people have thoughts on this?

Tycho

