---
layout: default
title: Commissions
date: 2015-09-23T14:11:44-04:00
modified: 2016-03-03T10:29:27-05:00
---

Commissions 2
<p>Gros morceaux grossissant en continu</p>


  <ul class="post-list">
    {% for study in site.studies %}
      <li>
        <h2>
          <a class="post-link" href="{{ study.url | prepend: site.baseurl }}">{{ study.title }}</a>
        </h2>
<!--         {{ post.excerpt }}
        <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
        <span class="post-meta label">{{ post.lubie }}</span> -->

      </li>
    {% endfor %}
  </ul>