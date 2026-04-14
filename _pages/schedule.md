---
layout: page
permalink: /schedule/
title: Schedule
description: 
nav: true
nav_order: 3
---

<style>
  :root {
    --bg: #ffffff;
    --text: #222;
    --muted: #555;
    --header-bg: #f5f5f5;
    --row-alt: #fafafa;
    --border: #e5e5e5;
    --hover: #f0f0f0;
  }

  @media (prefers-color-scheme: dark) {
    :root {
      --bg: #1e1e1e;
      --text: #e5e5e5;
      --muted: #aaa;
      --header-bg: #2a2a2a;
      --row-alt: #242424;
      --border: #333;
      --hover: #2f2f2f;
    }
  }

  .schedule-table {
    width: 100%;
    border-collapse: collapse;
    font-family: Arial, sans-serif;
    font-size: 14px;
    background-color: var(--bg);
    color: var(--text);
  }

  .schedule-table th {
    text-align: left;
    padding: 10px;
    background-color: var(--header-bg);
    border-bottom: 2px solid var(--border);
  }

  .schedule-table td {
    padding: 10px;
    border-bottom: 1px solid var(--border);
  }

  .schedule-table tr:nth-child(even) {
    background-color: var(--row-alt);
  }

  .schedule-table tr:hover {
    background-color: var(--hover);
  }

  .time-col {
    width: 160px;
    color: var(--muted);
    white-space: nowrap;
  }
</style>

<table class="schedule-table">
  <thead>
    <tr>
      <th class="time-col">Time</th>
      <th>Activity</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="time-col">09:00 - 09:05</td>
      <td>Welcome & Opening</td>
    </tr>
    <tr>
      <td class="time-col">09:05 - 09:50</td>
      <td>Invited Talk — Ana-Maria Bucur</td>
    </tr>
    <tr>
      <td class="time-col">09:50 - 10:30</td>
      <td>Best Paper Presentations</td>
    </tr>
    <tr>
      <td class="time-col">10:30 - 11:00</td>
      <td>Coffee Break</td>
    </tr>
    <tr>
      <td class="time-col">11:00 - 11:30</td>
      <td>Lightning Talks</td>
    </tr>
    <tr>
      <td class="time-col">11:30 - 13:00</td>
      <td>Poster Session</td>
    </tr>
    <tr>
      <td class="time-col">13:00 - 14:00</td>
      <td>Lunch Break</td>
    </tr>
    <tr>
      <td class="time-col">14:00 - 14:45</td>
      <td>Invited Talk — Anna Lauscher</td>
    </tr>
    <tr>
      <td class="time-col">14:45 - 16:00</td>
      <td>Annotation Lab</td>
    </tr>
    <tr>
      <td class="time-col">16:00 - 16:30</td>
      <td>Coffee Break</td>
    </tr>
    <tr>
      <td class="time-col">16:30 - 18:00</td>
      <td>Poster Session</td>
    </tr>
  </tbody>
</table>

---
