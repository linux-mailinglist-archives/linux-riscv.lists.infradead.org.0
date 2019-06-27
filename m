Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA21586C5
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 18:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5DSK0DQ7uvlT7Cu/9B0oXdREOSZSl/ianL55kssc+Y=; b=AekIoePvfdjWGo
	fjO8m962ThV/JX9c11bxWnR0ZAN8GqLcSTAH8C6+ZFhF6hTYAQNjVv+ZfodiI4OOcodi1OQgEfb9P
	Br4fCqAeSFcNV7ZUx+2f42/+L+vLwzQWLEBZqvm02nm4ALh2w+1Yg3siaCXuaRCZQySHwz2cU5s/Z
	10ThszLLIa/r94cIA2GjPpKW/dcGAl9rVx+2R6BkArexA9nbMhzrkEK9i68KpHfGc9pCRKabT4uI6
	Bs7z4dyO1EhTn2FYNdr7MK8P9hG2wZcskxDZV7jf8LZsXg8ohS7WePshNzJH8fqhhg2PRPjJpMsFp
	mq3j54pY5gdG02f/3Y8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgX2A-0007d6-P2; Thu, 27 Jun 2019 16:14:03 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgX26-0007cD-CZ
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 16:13:59 +0000
Received: by mail-io1-xd44.google.com with SMTP id r185so5992845iod.6
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 09:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=YuETa3oDVUrfM1AlnG0XabGhzbNGHx9EIaL7BfD2Dwk=;
 b=CbXK4cnlfsLqgcWbk9J1O19cC7jqM5R1GyFC5RXTsmRqwoUEV2NJ9LPi2EmzXe+1vG
 qCoPj1cMOEmcGu7KLw8WXb3lc/xVqslxMXana0Sg4KkAdtyQUoLcgGJ7QdndwmAR188i
 8DcpkgAbLey+JqExVPrENeLIes2OsFyyBDyedRY3g3n6pmy8gKn7GuNEHTTBhGBZBNh9
 bPMLkc/2qSQ8GfEfUbzTK7euEZicmfeApx6Ym7qA9lay+DlWcKVsFYcKuE5E8I6BLdiG
 M+chfQoe+Vq9l2wmRUZRlBOEZeQhj9ljVpVNOQyC15iPt4MJWD1zPw60BZIChkPn2p5Q
 hSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=YuETa3oDVUrfM1AlnG0XabGhzbNGHx9EIaL7BfD2Dwk=;
 b=NkWAeAPxcX0OMJ2RtCoqcee3ZYKhONSeW348008OC2x/C1+7JLa/zqpSP67wuJlCD5
 D91YJ76qi4aEdlBHBlPZi0agYsRgj+HfqZd33xK3pzSOwbYrk7NrqW+be/KAx/W2IVFw
 ZCJVNxk+L+E00hzAZskEaVqKhcmZCdlcQX6TWFiO2dwB3aObs94zxXIq+vSag2HRcilj
 3zeWLOxOjh8IBskjxS8vE8A+iA4Uw1DBlK6xAsfWwFxkXwE2iXANeWvJjoTShNteY9D3
 coAWpFI86sj8BaiSdasxS2x0rQLHrv06cfrSpczJTsYxvPIGSeQXjvElrEZsLt7+uTOM
 knkQ==
X-Gm-Message-State: APjAAAVInY7Z5WK++oy1jOIJFHPaZC+HI6bwnjXFGnXcE6l+AjzVuwEQ
 0USypJU5j7mJc2Wxfv8CKt5sAg==
X-Google-Smtp-Source: APXvYqzBXnSDmyScYxc36jaGMDBkMY9zvxNr9TAKEWXWOEcTbptqw9f6F4ZC/j0rxrwTCJUPKOYG0w==
X-Received: by 2002:a05:6638:3d6:: with SMTP id
 r22mr5561768jaq.71.1561652037218; 
 Thu, 27 Jun 2019 09:13:57 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 p3sm2749248iog.70.2019.06.27.09.13.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 09:13:56 -0700 (PDT)
Date: Thu, 27 Jun 2019 09:13:55 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH] riscv: ccache: Remove unused variable
In-Reply-To: <1561624486-22867-1-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1906270911270.12689@viisi.sifive.com>
References: <1561624486-22867-1-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_091358_457985_C874559D 
X-CRM114-Status: UNSURE (   6.42  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sachin.ghadi@sifive.com, linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 27 Jun 2019, Yash Shah wrote:

> Reading the count register clears the interrupt signal. Currently, the
> count registers are read into 'regval' variable but the variable is
> never used. Therefore remove it.
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

This is a good start.  Could you also add comments in the code that 
describe what those reads are doing, as you did in the patch description?  
Otherwise they look pretty mysterious.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
